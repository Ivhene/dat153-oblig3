.class public Lorg/checkerframework/framework/source/Result$DiagMessage;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/source/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiagMessage"
.end annotation


# instance fields
.field private args:[Ljava/lang/Object;

.field private final message:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lorg/checkerframework/framework/source/Result$DiagMessage;->message:Ljava/lang/String;

    .line 168
    if-nez p2, :cond_0

    .line 169
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/checkerframework/framework/source/Result$DiagMessage;->args:[Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_0
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/source/Result$DiagMessage;->args:[Ljava/lang/Object;

    .line 173
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 187
    instance-of v0, p1, Lorg/checkerframework/framework/source/Result$DiagMessage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    return v1

    .line 191
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/source/Result$DiagMessage;

    .line 193
    .local v0, "other":Lorg/checkerframework/framework/source/Result$DiagMessage;
    iget-object v2, p0, Lorg/checkerframework/framework/source/Result$DiagMessage;->message:Ljava/lang/String;

    iget-object v3, v0, Lorg/checkerframework/framework/source/Result$DiagMessage;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/framework/source/Result$DiagMessage;->args:[Ljava/lang/Object;

    iget-object v3, v0, Lorg/checkerframework/framework/source/Result$DiagMessage;->args:[Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getArgs()[Ljava/lang/Object;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/checkerframework/framework/source/Result$DiagMessage;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageKey()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/checkerframework/framework/source/Result$DiagMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 199
    iget-object v0, p0, Lorg/checkerframework/framework/source/Result$DiagMessage;->message:Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/framework/source/Result$DiagMessage;->args:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/checkerframework/framework/source/Result$DiagMessage;->args:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/checkerframework/framework/source/Result$DiagMessage;->message:Ljava/lang/String;

    return-object v0

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/framework/source/Result$DiagMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/source/Result$DiagMessage;->args:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
