.class Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$3;
.super Ljava/lang/Object;
.source "UBQualifier.java"

# interfaces
.implements Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->addOffset(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

.field final synthetic val$newOffset:Lorg/checkerframework/checker/index/upperbound/OffsetEquation;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 851
    iput-object p1, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$3;->this$0:Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    iput-object p2, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$3;->val$newOffset:Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    .locals 2
    .param p1, "eq"    # Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 854
    const/16 v0, 0x2b

    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$3;->val$newOffset:Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->copyAdd(CLorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v0

    return-object v0
.end method
