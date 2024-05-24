.class public interface abstract Lorg/checkerframework/com/google/common/reflect/TypeToInstanceMap;
.super Ljava/lang/Object;
.source "TypeToInstanceMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
        "+TB;>;TB;>;"
    }
.end annotation


# virtual methods
.method public abstract getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getInstance(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract putInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract putInstance(Lorg/checkerframework/com/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "TT;>;TT;)TT;"
        }
    .end annotation
.end method
