.class public interface abstract annotation Lscenelib/annotations/toys/SimplerAnnotation;
.super Ljava/lang/Object;
.source "SimplerAnnotation.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# virtual methods
.method public abstract be()Lscenelib/annotations/toys/BalanceEnum;
.end method

.method public abstract favoriteClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract height()I
.end method

.method public abstract wrappedHeight()[I
.end method
