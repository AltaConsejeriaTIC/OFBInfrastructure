interface EnvironmentInterface {
  mode: string;
  endpoint: string;
}

export const ENV: EnvironmentInterface = {
  /** PROD */
  mode: 'pro',
  endpoint: 'http://104.248.111.120:8080'
};