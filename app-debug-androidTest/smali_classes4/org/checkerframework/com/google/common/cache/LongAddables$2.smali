.class final Lorg/checkerframework/com/google/common/cache/LongAddables$2;
.super Ljava/lang/Object;
.source "LongAddables.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LongAddables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Supplier<",
        "Lorg/checkerframework/com/google/common/cache/LongAddable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LongAddables$2;->get()Lorg/checkerframework/com/google/common/cache/LongAddable;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/checkerframework/com/google/common/cache/LongAddable;
    .locals 2

    .line 46
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LongAddables$PureJavaLongAddable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/cache/LongAddables$PureJavaLongAddable;-><init>(Lorg/checkerframework/com/google/common/cache/LongAddables$1;)V

    return-object v0
.end method
