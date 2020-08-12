CREATE TABLE yamfinance.pools (
    pool_address bytea,
    token_address bytea,
    symbol text,
    name text
);

BEGIN;
DELETE FROM yamfinance.pools *;

COPY yamfinance.pools (pool_address, token_address, symbol, name) FROM stdin;
\\x8538E5910c6F80419CD3170c26073Ff238048c9E	\\xc00e94Cb662C3520282E6f5717214004A7f26888	COMP	YAMCOMPPool
\\x6009A344C7F993B16EBa2c673fefd2e07f9be5FD	\\x80fB784B7eD66730e8b1DBd9820aFD29931aab03	LEND	YAMLENDPool
\\xFDC28897A1E32B595f1f4f1D3aE0Df93B1eee452	\\x514910771AF9Ca656af840dff83E8264EcF986CA	LINK	YAMLINKPool
\\xcFe1E539AcB2D489a651cA011a6eB93d32f97E23	\\x9f8F72aA9304c8B593d555F12eF6589cC3A579A2	MKR	YAMMKRPool
\\x6c3FC1FFDb14D92394f40eeC91D9Ce8B807f132D	\\xC011a73ee8576Fb46F5E1c5751cA3B9Fe0af2a6F	SNX	YAMSNXPool
\\x587A07cE5c265A38Dd6d42def1566BA73eeb06F5	\\xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2	WETH	YMETHPool
\\xc5B6488c7D5BeD173B76Bd5DCA712f45fB9EaEaB	\\x0bc529c00C6401aEF6D220BE8C6Ea1667F6Ad93e	YFI	YAMYFIPool
\\x9EbB67687FEE2d265D7b824714DF13622D90E663	\\xc5be99A02C6857f9Eac67BbCE58DF5572498F40c	UNI(ETH/AMPL)	YAMAMPLPool
\.
COMMIT;
