.class public Lorg/checkerframework/checker/i18n/I18nSubchecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "I18nSubchecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/qual/RelevantJavaTypes;
    value = {
        Ljava/lang/CharSequence;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method
