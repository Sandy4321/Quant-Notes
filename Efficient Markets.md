##Random Walk Hypothesis

In an efficient market, the movement/change in stock prices is solely dependent on unforcastable events, such as news, world events etc. Thus it has be likened to a randomm walk. Introduced by statistician Pearson.

A random walk $x_k \rightarrow x_{k-1}$ is expressed as
$$ x_k = x_{k-1} + \epsilon_k $$

where $\epsilon_k$ is random noise with a mean $0$ and non zero standard deviation.

Thus the total movement of prices in the short term future should add up to $0$ or alternatively, the gains and losses in a stock should effectively cancel out in an efficient market.

###First order Auto regressive

$$x_t = 100 + \rho (x_{t-1} - 100) + \epsilon_t$$

where $-1<\rho<1$ and which for $\rho = 1$ is the random walk itself.