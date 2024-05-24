.class public Lorg/checkerframework/checker/i18nformatter/I18nFormatterChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "I18nFormatterChecker.java"


# annotations
.annotation runtime Ljavax/annotation/processing/SupportedOptions;
    value = {
        "bundlenames",
        "propfiles"
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/RelevantJavaTypes;
    value = {
        Ljava/lang/CharSequence;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method
