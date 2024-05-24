.class public final Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;
.super Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;
.source "IdentityMostlySingleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    .local p0, "this":Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;, "Lorg/checkerframework/dataflow/util/IdentityMostlySingleton<TT;>;"
    sget-object v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->EMPTY:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;-><init>(Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 20
    .local p0, "this":Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;, "Lorg/checkerframework/dataflow/util/IdentityMostlySingleton<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->SINGLETON:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;-><init>(Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;Ljava/lang/Object;)V

    .line 21
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 26
    .local p0, "this":Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;, "Lorg/checkerframework/dataflow/util/IdentityMostlySingleton<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    sget-object v0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton$1;->$SwitchMap$org$checkerframework$dataflow$util$AbstractMostlySingleton$State:[I

    iget-object v1, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 42
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :pswitch_0
    sget-object v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->ANY:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    iput-object v0, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->set:Ljava/util/Collection;

    .line 34
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->set:Ljava/util/Collection;

    iget-object v1, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->value:Ljava/lang/Object;

    .line 39
    :pswitch_1
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->set:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->set:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): set initialized before"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): previous add is non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 28
    :pswitch_2
    sget-object v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->SINGLETON:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    iput-object v0, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    .line 29
    iput-object p1, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->value:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 48
    .local p0, "this":Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;, "Lorg/checkerframework/dataflow/util/IdentityMostlySingleton<TT;>;"
    sget-object v0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton$1;->$SwitchMap$org$checkerframework$dataflow$util$AbstractMostlySingleton$State:[I

    iget-object v1, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 57
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->set:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->set:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): set initialized before"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 52
    :pswitch_1
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/IdentityMostlySingleton;->value:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 50
    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
