.class public final Lorg/checkerframework/framework/source/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/source/Result$DiagMessage;,
        Lorg/checkerframework/framework/source/Result$Type;
    }
.end annotation


# static fields
.field public static final SUCCESS:Lorg/checkerframework/framework/source/Result;


# instance fields
.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/source/Result$DiagMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lorg/checkerframework/framework/source/Result$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lorg/checkerframework/framework/source/Result;

    sget-object v1, Lorg/checkerframework/framework/source/Result$Type;->SUCCESS:Lorg/checkerframework/framework/source/Result$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/source/Result;-><init>(Lorg/checkerframework/framework/source/Result$Type;Ljava/util/Collection;)V

    sput-object v0, Lorg/checkerframework/framework/source/Result;->SUCCESS:Lorg/checkerframework/framework/source/Result;

    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/framework/source/Result$Type;Ljava/util/Collection;)V
    .locals 6
    .param p1, "type"    # Lorg/checkerframework/framework/source/Result$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/source/Result$Type;",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/framework/source/Result$DiagMessage;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p2, "messagePairs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/framework/source/Result$DiagMessage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/checkerframework/framework/source/Result;->type:Lorg/checkerframework/framework/source/Result$Type;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/source/Result;->messages:Ljava/util/List;

    .line 75
    if-eqz p2, :cond_1

    .line 76
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/source/Result$DiagMessage;

    .line 77
    .local v1, "msg":Lorg/checkerframework/framework/source/Result$DiagMessage;
    invoke-virtual {v1}, Lorg/checkerframework/framework/source/Result$DiagMessage;->getMessageKey()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/checkerframework/framework/source/Result$DiagMessage;->getArgs()[Ljava/lang/Object;

    move-result-object v3

    .line 79
    .local v3, "args":[Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {v1}, Lorg/checkerframework/framework/source/Result$DiagMessage;->getArgs()[Ljava/lang/Object;

    move-result-object v4

    array-length v5, v3

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 82
    :cond_0
    iget-object v4, p0, Lorg/checkerframework/framework/source/Result;->messages:Ljava/util/List;

    new-instance v5, Lorg/checkerframework/framework/source/Result$DiagMessage;

    invoke-direct {v5, v2, v3}, Lorg/checkerframework/framework/source/Result$DiagMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v1    # "msg":Lorg/checkerframework/framework/source/Result$DiagMessage;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "args":[Ljava/lang/Object;
    goto :goto_0

    .line 85
    :cond_1
    return-void
.end method

.method public static varargs failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;
    .locals 3
    .param p0, "messageKey"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 58
    new-instance v0, Lorg/checkerframework/framework/source/Result;

    sget-object v1, Lorg/checkerframework/framework/source/Result$Type;->FAILURE:Lorg/checkerframework/framework/source/Result$Type;

    new-instance v2, Lorg/checkerframework/framework/source/Result$DiagMessage;

    invoke-direct {v2, p0, p1}, Lorg/checkerframework/framework/source/Result$DiagMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/source/Result;-><init>(Lorg/checkerframework/framework/source/Result$Type;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;
    .locals 3
    .param p0, "messageKey"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 69
    new-instance v0, Lorg/checkerframework/framework/source/Result;

    sget-object v1, Lorg/checkerframework/framework/source/Result$Type;->WARNING:Lorg/checkerframework/framework/source/Result$Type;

    new-instance v2, Lorg/checkerframework/framework/source/Result$DiagMessage;

    invoke-direct {v2, p0, p1}, Lorg/checkerframework/framework/source/Result$DiagMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/source/Result;-><init>(Lorg/checkerframework/framework/source/Result$Type;Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public getDiagMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/source/Result$DiagMessage;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/checkerframework/framework/source/Result;->messages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/checkerframework/framework/source/Result;->getDiagMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v0, "msgKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/Result;->getDiagMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/source/Result$DiagMessage;

    .line 129
    .local v2, "msg":Lorg/checkerframework/framework/source/Result$DiagMessage;
    invoke-virtual {v2}, Lorg/checkerframework/framework/source/Result$DiagMessage;->getMessageKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v2    # "msg":Lorg/checkerframework/framework/source/Result$DiagMessage;
    goto :goto_0

    .line 132
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public isFailure()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/checkerframework/framework/source/Result;->type:Lorg/checkerframework/framework/source/Result$Type;

    sget-object v1, Lorg/checkerframework/framework/source/Result$Type;->FAILURE:Lorg/checkerframework/framework/source/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/checkerframework/framework/source/Result;->type:Lorg/checkerframework/framework/source/Result$Type;

    sget-object v1, Lorg/checkerframework/framework/source/Result$Type;->SUCCESS:Lorg/checkerframework/framework/source/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWarning()Z
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/checkerframework/framework/source/Result;->type:Lorg/checkerframework/framework/source/Result$Type;

    sget-object v1, Lorg/checkerframework/framework/source/Result$Type;->WARNING:Lorg/checkerframework/framework/source/Result$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public merge(Lorg/checkerframework/framework/source/Result;)Lorg/checkerframework/framework/source/Result;
    .locals 4
    .param p1, "r"    # Lorg/checkerframework/framework/source/Result;

    .line 96
    if-nez p1, :cond_0

    .line 97
    return-object p0

    .line 100
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/source/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/framework/source/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Lorg/checkerframework/framework/source/Result;->SUCCESS:Lorg/checkerframework/framework/source/Result;

    return-object v0

    .line 104
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/framework/source/Result;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Lorg/checkerframework/framework/source/Result;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/source/Result$DiagMessage;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/source/Result;->messages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    iget-object v1, p1, Lorg/checkerframework/framework/source/Result;->messages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    new-instance v1, Lorg/checkerframework/framework/source/Result;

    iget-object v2, p1, Lorg/checkerframework/framework/source/Result;->type:Lorg/checkerframework/framework/source/Result$Type;

    iget-object v3, p0, Lorg/checkerframework/framework/source/Result;->type:Lorg/checkerframework/framework/source/Result$Type;

    invoke-static {v2, v3}, Lorg/checkerframework/framework/source/Result$Type;->merge(Lorg/checkerframework/framework/source/Result$Type;Lorg/checkerframework/framework/source/Result$Type;)Lorg/checkerframework/framework/source/Result$Type;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/framework/source/Result;-><init>(Lorg/checkerframework/framework/source/Result$Type;Ljava/util/Collection;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 143
    sget-object v0, Lorg/checkerframework/framework/source/Result$1;->$SwitchMap$org$checkerframework$framework$source$Result$Type:[I

    iget-object v1, p0, Lorg/checkerframework/framework/source/Result;->type:Lorg/checkerframework/framework/source/Result$Type;

    invoke-virtual {v1}, Lorg/checkerframework/framework/source/Result$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 150
    const-string v0, "SUCCESS"

    return-object v0

    .line 147
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/source/Result;->messages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FAILURE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/source/Result;->messages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
