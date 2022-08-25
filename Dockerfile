FROM node:14
WORKDIR /usr/src/fee-withdrawer-v2

COPY . .
RUN yarn install

# required env
# ENV MISC_FEE_ACCOUNT_PRIVATE_KEY
# ENV CHAIN_STATE_KEEPER_FEE_ACCOUNT_ADDR
# ENV WITHDRAWAL_FINALIZER_ETH_ADDRESS
# ENV MISC_RESERVE_FEE_ACCUMULATOR_ADDRESS
# ENV L1_WEB3_API_URL
# ENV ZKSYNC_WEB3_API_URL
# ENV MISC_MAX_LIQUIDATION_FEE_PERCENT
# ENV ZKSYNC_WEB3_API_URL
# ENV LOWER_BOUND_OPERATOR_THRESHOLD
# ENV UPPER_BOUND_OPERATOR_THRESHOLD
# ENV LOWER_BOUND_WITHDRAWER_THRESHOLD
# ENV UPPER_BOUND_WITHDRAWER_THRESHOLD
# ENV NOTIFICATION_WEBHOOK_URL
# optional env
# ENV ETH_TRANSFER_THRESHOLD
CMD ["yarn", "start"]