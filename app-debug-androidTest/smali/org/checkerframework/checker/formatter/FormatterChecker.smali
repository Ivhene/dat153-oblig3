.class public Lorg/checkerframework/checker/formatter/FormatterChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "FormatterChecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/qual/RelevantJavaTypes;
    value = {
        Ljava/lang/CharSequence;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method
