.class Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;
.super Ljava/lang/Object;
.source "LockVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/lock/LockVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockExpression"
.end annotation


# instance fields
.field error:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

.field final expressionString:Ljava/lang/String;

.field lockExpression:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;

    .line 1343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1340
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->lockExpression:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1341
    iput-object v0, p0, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->error:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    .line 1344
    iput-object p1, p0, Lorg/checkerframework/checker/lock/LockVisitor$LockExpression;->expressionString:Ljava/lang/String;

    .line 1345
    return-void
.end method
