import numpy as np

def kmeans(X, k, iters=100):
    """ K-Means """
    centers = X[np.random.choice(len(X), k, replace=False)]
    for _ in range(iters):
        labels = np.argmin(((X[:, None] - centers) ** 2).sum(-1), axis=1)
        centers = np.array([X[labels == i].mean(0) for i in range(k)])
    return labels, centers

if __name__ == '__main__':
    X = np.random.randn(300, 2)
    labels, centers = kmeans(X, 3)
    print('聚类中心:\n', centers)
    print('前 10 个标签:', labels[:10])