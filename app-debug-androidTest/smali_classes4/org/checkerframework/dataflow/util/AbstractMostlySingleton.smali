.class public abstract Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;
.super Ljava/lang/Object;
.source "AbstractMostlySingleton.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected set:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 13
    return-void
.end method

.method protected constructor <init>(Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;)V
    .locals 1
    .param p1, "s"    # Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    .line 33
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->value:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method protected constructor <init>(Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "s"    # Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;",
            "TT;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton<TT;>;"
    .local p2, "v":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    .line 41
    iput-object p2, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->value:Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const/4 v0, 0x0

    .line 120
    .local v0, "res":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 121
    .local v2, "elem":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 122
    .end local v2    # "elem":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 123
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 158
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 143
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 61
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton<TT;>;"
    sget-object v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$2;->$SwitchMap$org$checkerframework$dataflow$util$AbstractMostlySingleton$State:[I

    iget-object v1, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 98
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->set:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): set initialized before"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 70
    :pswitch_1
    new-instance v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;-><init>(Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;)V

    return-object v0

    .line 68
    :pswitch_2
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 138
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 153
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 3

    .line 46
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton<TT;>;"
    sget-object v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$2;->$SwitchMap$org$checkerframework$dataflow$util$AbstractMostlySingleton$State:[I

    iget-object v1, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 55
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->set:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): set initialized before"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 50
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 48
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 128
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">([TS;)[TS;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TS;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 104
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton<TT;>;"
    sget-object v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$2;->$SwitchMap$org$checkerframework$dataflow$util$AbstractMostlySingleton$State:[I

    iget-object v1, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 113
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->state:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->set:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): set initialized before"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 108
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :pswitch_2
    const-string v0, "[]"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
