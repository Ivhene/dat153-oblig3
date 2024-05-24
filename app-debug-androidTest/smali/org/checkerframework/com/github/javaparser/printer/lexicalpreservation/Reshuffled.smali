.class public Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;
.super Ljava/lang/Object;
.source "Reshuffled.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElement;


# instance fields
.field private final nextOrder:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

.field private final previousOrder:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;)V
    .locals 0
    .param p1, "previousOrder"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .param p2, "nextOrder"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previousOrder",
            "nextOrder"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->previousOrder:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    .line 15
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->nextOrder:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 25
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;

    .line 30
    .local v1, "that":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->previousOrder:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    iget-object v3, v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->previousOrder:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 31
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->nextOrder:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    iget-object v2, v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->nextOrder:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 26
    .end local v1    # "that":Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;
    :cond_3
    :goto_0
    return v0
.end method

.method public bridge synthetic getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    move-result-object v0

    return-object v0
.end method

.method public getElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->nextOrder:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    return-object v0
.end method

.method public getNextOrder()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->nextOrder:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    return-object v0
.end method

.method public getPreviousOrder()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->previousOrder:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 36
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->previousOrder:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->hashCode()I

    move-result v0

    .line 37
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->nextOrder:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 38
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isAdded()Z
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reshuffled{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->nextOrder:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", previous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Reshuffled;->previousOrder:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
