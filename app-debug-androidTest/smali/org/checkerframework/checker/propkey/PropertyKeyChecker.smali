.class public Lorg/checkerframework/checker/propkey/PropertyKeyChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "PropertyKeyChecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/qual/RelevantJavaTypes;
    value = {
        Ljava/lang/CharSequence;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/source/SupportedOptions;
    value = {
        "propfiles",
        "bundlenames"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method
