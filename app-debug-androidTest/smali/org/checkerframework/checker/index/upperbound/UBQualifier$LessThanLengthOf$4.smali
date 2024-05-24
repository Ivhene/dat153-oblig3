.class Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$4;
.super Ljava/lang/Object;
.source "UBQualifier.java"

# interfaces
.implements Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->divide(I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 876
    iput-object p1, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$4;->this$0:Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    .locals 1
    .param p1, "eq"    # Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 879
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->isNegativeOrZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    return-object p1

    .line 882
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
