.class public interface abstract Lannotator/find/Criterion;
.super Ljava/lang/Object;
.source "Criterion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lannotator/find/Criterion$Kind;
    }
.end annotation


# virtual methods
.method public abstract getKind()Lannotator/find/Criterion$Kind;
.end method

.method public abstract isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
.end method

.method public abstract isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
.end method
