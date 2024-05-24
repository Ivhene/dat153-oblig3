.class public abstract Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
.super Ljava/lang/Object;
.source "FlowExpressions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/analysis/FlowExpressions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Receiver"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final type:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 418
    const-class v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions;

    return-void
.end method

.method public constructor <init>(Ljavax/lang/model/type/TypeMirror;)V
    .locals 1
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    if-eqz p1, :cond_0

    .line 423
    iput-object p1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->type:Ljavax/lang/model/type/TypeMirror;

    .line 424
    return-void

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public containsModifiableAliasOf(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p2, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/Store<",
            "*>;",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ")Z"
        }
    .end annotation

    .line 479
    .local p1, "store":Lorg/checkerframework/dataflow/analysis/Store;, "Lorg/checkerframework/dataflow/analysis/Store<*>;"
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/analysis/Store;->canAlias(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract containsOfClass(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;)Z"
        }
    .end annotation
.end method

.method public containsSyntacticEqualReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 467
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    return v0
.end method

.method public containsUnknown()Z
    .locals 1

    .line 433
    const-class v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Unknown;

    invoke-virtual {p0, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsOfClass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public debugToString()Ljava/lang/String;
    .locals 3

    .line 488
    nop

    .line 489
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->type:Ljavax/lang/model/type/TypeMirror;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 488
    const-string v1, "Receiver (%s) %s type=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->type:Ljavax/lang/model/type/TypeMirror;

    return-object v0
.end method

.method public abstract isUnassignableByOtherCode()Z
.end method

.method public abstract isUnmodifiableByOtherCode()Z
.end method

.method public syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 459
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
