using System.Linq.Expressions;

namespace ExamBackend.Data.Extensions;

public static class IQueryableExtensions
{
    public static IQueryable<TEntity> WhereIf<TEntity>(
        this IQueryable<TEntity> queryable, 
        Expression<Func<IQueryable<TEntity>, IQueryable<TEntity>>> filter,
        Expression<Func<bool>> predicate)
        => predicate.Compile().Invoke() ? filter.Compile().Invoke(queryable) : queryable;
}