.class abstract Lorg/checkerframework/com/google/common/util/concurrent/GwtFluentFutureCatchingSpecialization;
.super Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;
.source "GwtFluentFutureCatchingSpecialization.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/GwtFluentFutureCatchingSpecialization;, "Lorg/checkerframework/com/google/common/util/concurrent/GwtFluentFutureCatchingSpecialization<TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/AbstractFuture;-><init>()V

    return-void
.end method
