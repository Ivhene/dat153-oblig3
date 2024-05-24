.class public final Lorg/checkerframework/org/objectweb/asmx/Handle;
.super Ljava/lang/Object;
.source "Handle.java"


# instance fields
.field final desc:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final owner:Ljava/lang/String;

.field final tag:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->tag:I

    .line 90
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->owner:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->name:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->desc:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 141
    return v0

    .line 143
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/org/objectweb/asmx/Handle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 144
    return v2

    .line 146
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/Handle;

    .line 147
    .local v1, "h":Lorg/checkerframework/org/objectweb/asmx/Handle;
    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->tag:I

    iget v4, v1, Lorg/checkerframework/org/objectweb/asmx/Handle;->tag:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->owner:Ljava/lang/String;

    iget-object v4, v1, Lorg/checkerframework/org/objectweb/asmx/Handle;->owner:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->name:Ljava/lang/String;

    iget-object v4, v1, Lorg/checkerframework/org/objectweb/asmx/Handle;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->desc:Ljava/lang/String;

    iget-object v4, v1, Lorg/checkerframework/org/objectweb/asmx/Handle;->desc:Ljava/lang/String;

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 147
    :goto_0
    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->tag:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 153
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->tag:I

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->owner:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->desc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/Handle;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
