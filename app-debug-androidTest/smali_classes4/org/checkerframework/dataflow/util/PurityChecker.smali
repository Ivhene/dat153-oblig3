.class public Lorg/checkerframework/dataflow/util/PurityChecker;
.super Ljava/lang/Object;
.source "PurityChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;,
        Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPurity(Lcom/sun/source/util/TreePath;Lorg/checkerframework/javacutil/AnnotationProvider;ZZ)Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;
    .locals 2
    .param p0, "statement"    # Lcom/sun/source/util/TreePath;
    .param p1, "annoProvider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p2, "assumeSideEffectFree"    # Z
    .param p3, "assumeDeterministic"    # Z

    .line 56
    new-instance v0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;

    invoke-direct {v0, p1, p2, p3}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;-><init>(Lorg/checkerframework/javacutil/AnnotationProvider;ZZ)V

    .line 58
    .local v0, "helper":Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;
    if-eqz p0, :cond_0

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    iget-object v1, v0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityCheckerHelper;->purityResult:Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;

    return-object v1
.end method
