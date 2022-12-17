import type { Config } from '@jest/types';

const { WEB_BROWSER } = process.env;

const config: Config.InitialOptions = {
    preset: WEB_BROWSER && 'jest-playwright-preset',
    transform: {
        '^.+\\.ts$': 'ts-jest',
    },
    testTimeout: 60000,
};
export default config;
