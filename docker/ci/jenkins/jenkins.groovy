import com.cloudbees.jenkins.plugins.sshcredentials.impl.BasicSSHUserPrivateKey
import com.cloudbees.plugins.credentials.*
import com.cloudbees.plugins.credentials.CredentialsScope
import com.cloudbees.plugins.credentials.domains.*
import com.cloudbees.plugins.credentials.domains.Domain
import com.cloudbees.plugins.credentials.impl.*
import hudson.model.Item
import hudson.model.JDK
import hudson.plugins.git.*
import hudson.plugins.git.*
import hudson.plugins.sonar.*
import hudson.plugins.sonar.*
import hudson.plugins.sonar.model.*
import hudson.plugins.sonar.model.*
import hudson.security.GlobalMatrixAuthorizationStrategy
import hudson.security.HudsonPrivateSecurityRealm
import hudson.security.csrf.DefaultCrumbIssuer
import javaposse.jobdsl.plugin.*
import javaposse.jobdsl.plugin.*
import jenkins.model.*
import jenkins.model.*
import jenkins.plugins.nodejs.tools.*
import jenkins.plugins.nodejs.tools.*
import jenkins.security.s2m.AdminWhitelistRule

def createUsers(Jenkins instance){
    def hudsonRealm = new HudsonPrivateSecurityRealm(false)
    def strategy = new GlobalMatrixAuthorizationStrategy()

    def admins = ["fnovoa10", "brigitte"]
    for(String username : admins){
        hudsonRealm.createAccount(username, username)
        strategy.add(Jenkins.ADMINISTER, username)
    }

    def devs = ["cegard"]
    for(String username : devs){
        hudsonRealm.createAccount(username, username)
        strategy.add(Jenkins.READ, username)
        strategy.add(Item.BUILD, username)
        strategy.add(Item.READ, username)
    }

    instance.setSecurityRealm(hudsonRealm)
    instance.setAuthorizationStrategy(strategy)
    instance.save()
}


def addJDKInstallation(Jenkins instance, String name, String location){
    def installations = []
    def desc = instance.getDescriptor(JDK.class)
    def installation = new JDK(name, location)
    installations.push(installation)
    desc.setInstallations(installations.toArray(new JDK[0]))
    desc.save()
}

def addNodeJSInstallation(Jenkins instance, String version, String commandLocation){
    def installations = []
    def desc = instance.getDescriptor(NodeJSInstallation.class)
    def installation = new NodeJSInstallation(version, commandLocation, [])
    installations.push(installation)
    desc.setInstallations(installations.toArray(new NodeJSInstallation[0]))
    desc.save()
}


def addCredentials(Jenkins instance){
    global_domain = Domain.global()
    credentials_store =
            instance.getExtensionList(
                    'com.cloudbees.plugins.credentials.SystemCredentialsProvider'
            )[0].getStore()
    global_domain = Domain.global()

    Credentials c = new UsernamePasswordCredentialsImpl(CredentialsScope.GLOBAL,java.util.UUID.randomUUID().toString(), "description", "fnovoa10", "Dd\$ty80!-")
    credentials_store.addCredentials(global_domain, c)
    return c.id
}

def addKeys(Jenkins instance){
    def privateKey = new File('/var/jenkins_home/.ssh/id_rsa').text

    global_domain = Domain.global()
    credentials_store =
            instance.getExtensionList(
                    'com.cloudbees.plugins.credentials.SystemCredentialsProvider'
            )[0].getStore()

    credentials = new BasicSSHUserPrivateKey(
            CredentialsScope.GLOBAL,
            "jenkins",
            "jenkins",
            new BasicSSHUserPrivateKey.DirectEntryPrivateKeySource(privateKey),
            "",
            "Key to access DO servers"
    )
    credentials_store.addCredentials(global_domain, credentials)

    return credentials.id
}

def addJob(Jenkins instance, String project, String gitRepoUrl, String branch, String jenkinsCredentialsId) {
    def userRemoteConfig = new UserRemoteConfig(gitRepoUrl, "", "", jenkinsCredentialsId)
    def scm = new GitSCM(gitRepoUrl)
    scm.branches = [new BranchSpec(branch)];
    scm.userRemoteConfigs = [userRemoteConfig]

    def flowDefinition = new org.jenkinsci.plugins.workflow.cps.CpsScmFlowDefinition(scm, "Jenkinsfile")
    def job = new org.jenkinsci.plugins.workflow.job.WorkflowJob(instance, project)
    job.definition = flowDefinition
    instance.reload()
}

def main() {
    jlc = JenkinsLocationConfiguration.get()
    //jlc.setUrl("http://jenkins.copaair.com")
    jlc.save()

    def instance = Jenkins.get()
    instance.getDescriptor("jenkins.CLI").get().setEnabled(false)
    instance.setCrumbIssuer(new DefaultCrumbIssuer(true))
    instance.injector.getInstance(AdminWhitelistRule.class).setMasterKillSwitch(false)
    HashSet<String> newProtocols = new HashSet<>(instance.getAgentProtocols())
    newProtocols.removeAll(Arrays.asList(
            "JNLP3-connect", "JNLP2-connect", "JNLP-connect", "CLI-connect"
    ))
    instance.setAgentProtocols(newProtocols)
    instance.save()

    createUsers(instance)

    addNodeJSInstallation(instance, "v10.9.0", "/opt/node-v10.9.0-linux-x64")
    addJDKInstallation(instance, "ojdk8", "/usr/lib/jvm/java-8-openjdk-amd64")

    def credentialsId = addCredentials(instance)
    addKeys(instance)
    addJob(instance, "OFBBackend", "https://github.com/alvarotrianas/OFBBackend.git", "*/jenkins", credentialsId)

}

main()