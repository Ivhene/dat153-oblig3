.class public Lorg/checkerframework/checker/optional/OptionalChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "OptionalChecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/qual/RelevantJavaTypes;
    value = {
        Ljava/util/Optional;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method
