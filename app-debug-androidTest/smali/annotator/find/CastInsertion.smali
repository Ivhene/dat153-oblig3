.class public Lannotator/find/CastInsertion;
.super Lannotator/find/Insertion;
.source "CastInsertion.java"


# instance fields
.field public onArrayLiteral:Z

.field private type:Lscenelib/type/Type;


# direct methods
.method public constructor <init>(Lannotator/find/Criteria;Lscenelib/type/Type;)V
    .locals 1
    .param p1, "criteria"    # Lannotator/find/Criteria;
    .param p2, "type"    # Lscenelib/type/Type;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lannotator/find/Insertion;-><init>(Lannotator/find/Criteria;Z)V

    .line 30
    iput-boolean v0, p0, Lannotator/find/CastInsertion;->onArrayLiteral:Z

    .line 40
    iput-object p2, p0, Lannotator/find/CastInsertion;->type:Lscenelib/type/Type;

    .line 41
    return-void
.end method


# virtual methods
.method protected addLeadingSpace(ZIC)Z
    .locals 1
    .param p1, "gotSeparateLine"    # Z
    .param p2, "pos"    # I
    .param p3, "precedingChar"    # C

    .line 68
    invoke-super {p0, p1, p2, p3}, Lannotator/find/Insertion;->addLeadingSpace(ZIC)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    if-eq p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected addTrailingSpace(Z)Z
    .locals 1
    .param p1, "gotSeparateLine"    # Z

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getKind()Lannotator/find/Insertion$Kind;
    .locals 1

    .line 88
    sget-object v0, Lannotator/find/Insertion$Kind;->CAST:Lannotator/find/Insertion$Kind;

    return-object v0
.end method

.method protected getText(ZZ)Ljava/lang/String;
    .locals 2
    .param p1, "comments"    # Z
    .param p2, "abbreviate"    # Z

    .line 58
    iget-boolean v0, p0, Lannotator/find/CastInsertion;->onArrayLiteral:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "((new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/CastInsertion;->type:Lscenelib/type/Type;

    .line 59
    invoke-virtual {p0, v1, p1, p2}, Lannotator/find/CastInsertion;->typeToString(Lscenelib/type/Type;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/CastInsertion;->type:Lscenelib/type/Type;

    .line 60
    invoke-virtual {p0, v1, p1, p2}, Lannotator/find/CastInsertion;->typeToString(Lscenelib/type/Type;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 61
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public getType()Lscenelib/type/Type;
    .locals 1

    .line 49
    iget-object v0, p0, Lannotator/find/CastInsertion;->type:Lscenelib/type/Type;

    return-object v0
.end method

.method public isOnArrayLiteral()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lannotator/find/CastInsertion;->onArrayLiteral:Z

    return v0
.end method

.method public setOnArrayLiteral(Z)V
    .locals 0
    .param p1, "onArrayLiteral"    # Z

    .line 83
    iput-boolean p1, p0, Lannotator/find/CastInsertion;->onArrayLiteral:Z

    .line 84
    return-void
.end method

.method protected setType(Lscenelib/type/Type;)V
    .locals 0
    .param p1, "t"    # Lscenelib/type/Type;

    .line 53
    iput-object p1, p0, Lannotator/find/CastInsertion;->type:Lscenelib/type/Type;

    .line 54
    return-void
.end method
