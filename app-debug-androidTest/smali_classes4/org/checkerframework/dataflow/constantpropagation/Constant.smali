.class public Lorg/checkerframework/dataflow/constantpropagation/Constant;
.super Ljava/lang/Object;
.source "Constant.java"

# interfaces
.implements Lorg/checkerframework/dataflow/analysis/AbstractValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/dataflow/analysis/AbstractValue<",
        "Lorg/checkerframework/dataflow/constantpropagation/Constant;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected type:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

.field protected value:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;->CONSTANT:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    iput-object v0, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->type:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    .line 31
    iput-object p1, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->value:Ljava/lang/Integer;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;->CONSTANT:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    if-eq p1, v0, :cond_0

    .line 25
    iput-object p1, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->type:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    .line 26
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public copy()Lorg/checkerframework/dataflow/constantpropagation/Constant;
    .locals 2

    .line 57
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    iget-object v1, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->value:Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lorg/checkerframework/dataflow/constantpropagation/Constant;-><init>(Ljava/lang/Integer;)V

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    iget-object v1, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->type:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    invoke-direct {v0, v1}, Lorg/checkerframework/dataflow/constantpropagation/Constant;-><init>(Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 83
    return v1

    .line 85
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    .line 86
    .local v0, "other":Lorg/checkerframework/dataflow/constantpropagation/Constant;
    iget-object v2, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->type:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    iget-object v3, v0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->type:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->value:Ljava/lang/Integer;

    iget-object v3, v0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->value:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 2

    .line 52
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->value:Ljava/lang/Integer;

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): inspection"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->type:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    iget-object v1, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->value:Ljava/lang/Integer;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBottom()Z
    .locals 2

    .line 41
    iget-object v0, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->type:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    sget-object v1, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;->BOTTOM:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConstant()Z
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "value"
        }
        result = true
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->type:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    sget-object v1, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;->CONSTANT:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->value:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTop()Z
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->type:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    sget-object v1, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;->TOP:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic leastUpperBound(Lorg/checkerframework/dataflow/analysis/AbstractValue;)Lorg/checkerframework/dataflow/analysis/AbstractValue;
    .locals 0

    .line 8
    check-cast p1, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->leastUpperBound(Lorg/checkerframework/dataflow/constantpropagation/Constant;)Lorg/checkerframework/dataflow/constantpropagation/Constant;

    move-result-object p1

    return-object p1
.end method

.method public leastUpperBound(Lorg/checkerframework/dataflow/constantpropagation/Constant;)Lorg/checkerframework/dataflow/constantpropagation/Constant;
    .locals 2
    .param p1, "other"    # Lorg/checkerframework/dataflow/constantpropagation/Constant;

    .line 65
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->copy()Lorg/checkerframework/dataflow/constantpropagation/Constant;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->copy()Lorg/checkerframework/dataflow/constantpropagation/Constant;

    move-result-object v0

    return-object v0

    .line 71
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->isTop()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->isTop()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->getValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->getValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->copy()Lorg/checkerframework/dataflow/constantpropagation/Constant;

    move-result-object v0

    return-object v0

    .line 77
    :cond_3
    new-instance v0, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    sget-object v1, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;->TOP:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    invoke-direct {v0, v1}, Lorg/checkerframework/dataflow/constantpropagation/Constant;-><init>(Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;)V

    return-object v0

    .line 72
    :cond_4
    :goto_0
    new-instance v0, Lorg/checkerframework/dataflow/constantpropagation/Constant;

    sget-object v1, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;->TOP:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    invoke-direct {v0, v1}, Lorg/checkerframework/dataflow/constantpropagation/Constant;-><init>(Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    sget-object v0, Lorg/checkerframework/dataflow/constantpropagation/Constant$1;->$SwitchMap$org$checkerframework$dataflow$constantpropagation$Constant$Type:[I

    iget-object v1, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->type:Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/constantpropagation/Constant$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    goto :goto_0

    .line 102
    :pswitch_0
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/constantpropagation/Constant;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/checkerframework/dataflow/constantpropagation/Constant;->value:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness)"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 100
    :pswitch_1
    const-string v0, "-"

    return-object v0

    .line 98
    :pswitch_2
    const-string v0, "T"

    return-object v0

    .line 105
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
