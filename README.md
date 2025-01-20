# Probabilistic brain tissue segmentation using MultiAtlases using Matlab

The Bayesian classifier models the probabilistic relationships between the attribute set and the class variables, which are then used for estimating the class probability of the unknown variable. This model involves Bayesian inference such as maximum a posteriori (MAP) estimation, where the goal is to estimate the label output image $\theta$ given the observed image D by minimizing the posterior distribution  $P(\theta /D)$ of the possible labels  $\theta$:
$$
    \theta=argmax P(\theta /D) 
$$
The Bayesian framework consists of three probability distributions: the prior distribution $P(\theta)$, the posterior distribution $P(\theta /D)$, and the conditional distribution  (also called the likelihood function) $P(D/\theta)$. The prior distribution embodies the knowledge of likely configurations before an actual image is observed. The posterior distribution is derived after an observation has been made and the likelihood is defined as the probability of obtaining a particular observation given a set of model parameters.
Let’s assume that a set of probability distribution parameters, $\theta$, best explains the dataset $D$. We may wish to estimate the parameters $\theta$ with the help of the Bayes’ Rule.  The Bayes rule describes the relation between the posterior probability, prior probability , and likelihood  as follows:

![Method](Images/method.png)

$$
    P(\theta|D) = \frac{P(D|\theta)* P(\Theta)}{P(D)}
$$

The Maximum a Posteriori (MAP) estimator assigns to each voxel that class which maximizes

$$
    \hat\theta = argmax(P(D|\theta) * P(\theta))
$$

where $\theta \in \lbrace WM,GM,CSF\rbrace $,  $D$- Data Intensity in the voxel. Classification of new data is obtained by assigning each pixel to the class with the highest posterior probability.

## Likelihood function

In the case of the brain MRI segmentation, often it is assumed that the pixel intensities are independent samples from a mixture of Gaussian probability distributions. 

![Likelihood](Images/likelihood.png)
