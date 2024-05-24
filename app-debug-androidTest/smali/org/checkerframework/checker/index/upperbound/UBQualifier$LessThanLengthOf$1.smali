.class Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$1;
.super Ljava/lang/Object;
.source "UBQualifier.java"

# interfaces
.implements Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->removeSequenceLengthAccess(Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

.field final synthetic val$sequences:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 811
    iput-object p1, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$1;->this$0:Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    iput-object p2, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$1;->val$sequences:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    .locals 1
    .param p1, "eq"    # Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 814
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$1;->val$sequences:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->removeSequenceLengths(Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v0

    return-object v0
.end method
