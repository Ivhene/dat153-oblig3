.class public final Lorg/checkerframework/dataflow/util/MostlySingleton;
.super Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;
.source "MostlySingleton.java"


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

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    .local p0, "this":Lorg/checkerframework/dataflow/util/MostlySingleton;, "Lorg/checkerframework/dataflow/util/MostlySingleton<TT;>;"
    sget-object v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->EMPTY:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;-><init>(Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lorg/checkerframework/dataflow/util/MostlySingleton;, "Lorg/checkerframework/dataflow/util/MostlySingleton<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->SINGLETON:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;-><init>(Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;Ljava/lang/Object;)V

    .line 22
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

    .line 27
    .local p0, "this":Lorg/checkerframework/dataflow/util/MostlySingleton;, "Lorg/checkerframework/dataflow/util/MostlySingleton<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    sget-object v0, Lorg/checkerframework/dataflow/util/MostlySingleton$1;->$SwitchMap$org$checkerframework$dataflow$util$AbstractMostlySingleton$State:[I

    iget-object v1, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 43
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :pswitch_0
    sget-object v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->ANY:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    iput-object v0, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->set:Ljava/util/Collection;

    .line 35
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->set:Ljava/util/Collection;

    iget-object v1, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->value:Ljava/lang/Object;

    .line 40
    :pswitch_1
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->set:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->set:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): set initialized before"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): previous add is non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 29
    :pswitch_2
    sget-object v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->SINGLETON:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    iput-object v0, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    .line 30
    iput-object p1, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->value:Ljava/lang/Object;

    .line 31
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

    .line 49
    .local p0, "this":Lorg/checkerframework/dataflow/util/MostlySingleton;, "Lorg/checkerframework/dataflow/util/MostlySingleton<TT;>;"
    sget-object v0, Lorg/checkerframework/dataflow/util/MostlySingleton$1;->$SwitchMap$org$checkerframework$dataflow$util$AbstractMostlySingleton$State:[I

    iget-object v1, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 58
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->set:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->set:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): set initialized before"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 53
    :pswitch_1
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/MostlySingleton;->value:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 51
    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
