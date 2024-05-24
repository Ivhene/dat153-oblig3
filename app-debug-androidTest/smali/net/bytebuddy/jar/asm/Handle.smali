.class public final Lnet/bytebuddy/jar/asm/Handle;
.super Ljava/lang/Object;
.source "Handle.java"


# instance fields
.field private final descriptor:Ljava/lang/String;

.field private final isInterface:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/String;

.field private final tag:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "isInterface"    # Z

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lnet/bytebuddy/jar/asm/Handle;->tag:I

    .line 100
    iput-object p2, p0, Lnet/bytebuddy/jar/asm/Handle;->owner:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lnet/bytebuddy/jar/asm/Handle;->name:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lnet/bytebuddy/jar/asm/Handle;->descriptor:Ljava/lang/String;

    .line 103
    iput-boolean p5, p0, Lnet/bytebuddy/jar/asm/Handle;->isInterface:Z

    .line 104
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 156
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 157
    return v0

    .line 159
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/jar/asm/Handle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 160
    return v2

    .line 162
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/jar/asm/Handle;

    .line 163
    .local v1, "handle":Lnet/bytebuddy/jar/asm/Handle;
    iget v3, p0, Lnet/bytebuddy/jar/asm/Handle;->tag:I

    iget v4, v1, Lnet/bytebuddy/jar/asm/Handle;->tag:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lnet/bytebuddy/jar/asm/Handle;->isInterface:Z

    iget-boolean v4, v1, Lnet/bytebuddy/jar/asm/Handle;->isInterface:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/Handle;->owner:Ljava/lang/String;

    iget-object v4, v1, Lnet/bytebuddy/jar/asm/Handle;->owner:Ljava/lang/String;

    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/Handle;->name:Ljava/lang/String;

    iget-object v4, v1, Lnet/bytebuddy/jar/asm/Handle;->name:Ljava/lang/String;

    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/Handle;->descriptor:Ljava/lang/String;

    iget-object v4, v1, Lnet/bytebuddy/jar/asm/Handle;->descriptor:Ljava/lang/String;

    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 163
    :goto_0
    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Handle;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Handle;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Handle;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 115
    iget v0, p0, Lnet/bytebuddy/jar/asm/Handle;->tag:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 172
    iget v0, p0, Lnet/bytebuddy/jar/asm/Handle;->tag:I

    .line 173
    iget-boolean v1, p0, Lnet/bytebuddy/jar/asm/Handle;->isInterface:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x40

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Handle;->owner:Ljava/lang/String;

    .line 174
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Handle;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Handle;->descriptor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 172
    return v0
.end method

.method public isInterface()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/Handle;->isInterface:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Handle;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Handle;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Handle;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/Handle;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/bytebuddy/jar/asm/Handle;->isInterface:Z

    if-eqz v1, :cond_0

    const-string v1, " itf"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
