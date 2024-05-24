.class public Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
.super Ljava/lang/Object;
.source "InstructionHandle.java"


# annotations
.annotation runtime Lorg/checkerframework/checker/interning/qual/UsesObjectEquals;
.end annotation


# static fields
.field private static ih_list:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected i_position:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

.field private next:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

.field private prev:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

.field private targeters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    const/4 v0, 0x0

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->ih_list:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-void
.end method

.method protected constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->i_position:I

    .line 117
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setInstruction(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    .line 118
    return-void
.end method

.method static getInstructionHandle(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 2
    .param p0, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 126
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->ih_list:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    return-object v0

    .line 129
    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->ih_list:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 130
    .local v0, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v1, v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->next:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    sput-object v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->ih_list:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 131
    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->setInstruction(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    .line 132
    return-object v0
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 1
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 307
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V

    .line 308
    return-void
.end method

.method public addAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "attr"    # Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->attributes:Ljava/util/Map;

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-void
.end method

.method protected addHandle()V
    .locals 1

    .line 172
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->ih_list:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->next:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 173
    sput-object p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->ih_list:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 174
    return-void
.end method

.method public addTargeter(Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;)V
    .locals 1
    .param p1, "t"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;

    .line 215
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->targeters:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->targeters:Ljava/util/Set;

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->targeters:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method dispose()V
    .locals 2

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->prev:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->next:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 183
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->dispose()V

    .line 184
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 185
    const/4 v1, -0x1

    iput v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->i_position:I

    .line 186
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->attributes:Ljava/util/Map;

    .line 187
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->removeAllTargeters()V

    .line 188
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->addHandle()V

    .line 189
    return-void
.end method

.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->attributes:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 286
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributes()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->attributes:Ljava/util/Map;

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    return-object v0
.end method

.method public final getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->next:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 157
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->i_position:I

    return v0
.end method

.method public final getPrev()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->prev:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

.method public getTargeters()[Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    .locals 2

    .line 232
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->hasTargeters()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;

    return-object v0

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->targeters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;

    .line 236
    .local v0, "t":[Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->targeters:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 237
    return-object v0
.end method

.method public hasTargeters()Z
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->targeters:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeAllTargeters()V
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->targeters:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 198
    :cond_0
    return-void
.end method

.method public removeAttribute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->attributes:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_0
    return-void
.end method

.method public removeTargeter(Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;)V
    .locals 1
    .param p1, "t"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;

    .line 205
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->targeters:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    return-void
.end method

.method public setInstruction(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V
    .locals 3
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 85
    if-eqz p1, :cond_3

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    if-eq v0, v1, :cond_1

    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Assigning branch instruction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to plain handle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->dispose()V

    .line 94
    :cond_2
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 95
    return-void

    .line 86
    :cond_3
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    const-string v1, "Assigning null to handle"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final setNext(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 0
    .param p1, "next"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 316
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->next:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 317
    return-object p1
.end method

.method setPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 165
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->i_position:I

    .line 166
    return-void
.end method

.method final setPrev(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 0
    .param p1, "prev"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 326
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->prev:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 327
    return-object p1
.end method

.method public swapInstruction(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 110
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 111
    .local v0, "oldInstruction":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 112
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 5
    .param p1, "verbose"    # Z

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->i_position:I

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/4 v4, 0x4

    invoke-static {v1, v4, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->format(IIZC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->instruction:Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updatePosition(II)I
    .locals 1
    .param p1, "offset"    # I
    .param p2, "max_offset"    # I

    .line 147
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->i_position:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->i_position:I

    .line 148
    const/4 v0, 0x0

    return v0
.end method
