.class Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;
.super Ljava/lang/Object;
.source "Subroutines.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubroutineImpl"
.end annotation

.annotation runtime Lorg/checkerframework/checker/interning/qual/UsesObjectEquals;
.end annotation


# static fields
.field private static final UNSET:I = -0x1


# instance fields
.field private final instructions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
            ">;"
        }
    .end annotation
.end field

.field private localVariable:I

.field private final theJSRs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
            ">;"
        }
    .end annotation
.end field

.field private theRET:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

.field final synthetic this$0:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 p1, -0x1

    iput p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    .line 91
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/Set;

    .line 105
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->theJSRs:Ljava/util/Set;

    .line 351
    return-void
.end method

.method private _getRecursivelyAccessedLocalsIndicesHelper(Ljava/util/Set;[Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;)V
    .locals 9
    .param p2, "subs"    # [Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;[",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;",
            ")V"
        }
    .end annotation

    .line 259
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 260
    .local v3, "sub":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    invoke-interface {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;->getAccessedLocalsIndices()[I

    move-result-object v4

    .line 261
    .local v4, "lvs":[I
    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_0

    aget v7, v4, v6

    .line 262
    .local v7, "lv":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v7    # "lv":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 264
    :cond_0
    invoke-interface {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;->subSubs()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_1

    .line 265
    invoke-interface {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;->subSubs()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->_getRecursivelyAccessedLocalsIndicesHelper(Ljava/util/Set;[Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;)V

    .line 259
    .end local v3    # "sub":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    .end local v4    # "lvs":[I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;

    .line 74
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    return v0
.end method

.method static synthetic access$100(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;

    .line 74
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->theJSRs:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;

    .line 74
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->theRET:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method


# virtual methods
.method public addEnteringJsrInstruction(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 3
    .param p1, "jsrInst"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 189
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    if-eqz v0, :cond_2

    .line 192
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 198
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;->getIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->theJSRs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    return-void

    .line 199
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "Setting a wrong JsrInstruction."

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "Set the localVariable first!"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "Expecting JsrInstruction InstructionHandle."

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addInstruction(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 2
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 230
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->theRET:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    return-void

    .line 231
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "All instructions must have been added before invoking setLeavingRET()."

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z
    .locals 1
    .param p1, "inst"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 98
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAccessedLocalsIndices()[I
    .locals 6

    .line 276
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 277
    .local v0, "acc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->theRET:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->getTopLevel()Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v2, "This subroutine object must be built up completely before calculating accessed locals."

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 284
    .local v2, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v3

    instance-of v3, v3, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v3

    instance-of v3, v3, Lorg/checkerframework/org/apache/bcel/generic/RET;

    if-eqz v3, :cond_4

    .line 285
    :cond_2
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;

    move-object v4, v3

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;

    invoke-interface {v3}, Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;->getIndex()I

    move-result v3

    .line 286
    .local v3, "idx":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    :try_start_0
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v4

    instance-of v4, v4, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;

    if-eqz v4, :cond_3

    .line 292
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v4

    .line 293
    .local v4, "s":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 294
    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v4    # "s":I
    :cond_3
    nop

    .line 302
    .end local v2    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v3    # "idx":I
    :cond_4
    goto :goto_1

    .line 298
    .restart local v2    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .restart local v3    # "idx":I
    :catch_0
    move-exception v1

    .line 299
    .local v1, "re":Ljava/lang/RuntimeException;
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v5, "Oops. BCEL did not like NULL as a ConstantPoolGen object."

    invoke-direct {v4, v5, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 306
    .end local v1    # "re":Ljava/lang/RuntimeException;
    .end local v2    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v3    # "idx":I
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 307
    .local v1, "ret":[I
    const/4 v2, -0x1

    .line 308
    .local v2, "j":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 309
    .local v4, "accessedLocal":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    .line 310
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v2

    .line 311
    .end local v4    # "accessedLocal":Ljava/lang/Integer;
    goto :goto_2

    .line 312
    :cond_6
    return-object v1
.end method

.method public getEnteringJsrInstructions()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->getTopLevel()Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->theJSRs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 182
    .local v0, "jsrs":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->theJSRs:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v1

    .line 179
    .end local v0    # "jsrs":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "getLeavingRET() called on top level pseudo-subroutine."

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInstructions()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 2

    .line 220
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 221
    .local v0, "ret":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v1
.end method

.method public getLeavingRET()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 2

    .line 209
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->getTopLevel()Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 212
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->theRET:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0

    .line 210
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "getLeavingRET() called on top level pseudo-subroutine."

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRecursivelyAccessedLocalsIndices()[I
    .locals 7

    .line 239
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 240
    .local v0, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->getAccessedLocalsIndices()[I

    move-result-object v1

    .line 241
    .local v1, "lvs":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 242
    .local v4, "lv":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v4    # "lv":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->subSubs()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->_getRecursivelyAccessedLocalsIndicesHelper(Ljava/util/Set;[Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;)V

    .line 245
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 246
    .local v2, "ret":[I
    const/4 v3, -0x1

    .line 247
    .local v3, "j":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 248
    .local v5, "index":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    .line 249
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v3

    .line 250
    .end local v5    # "index":Ljava/lang/Integer;
    goto :goto_1

    .line 251
    :cond_1
    return-object v2
.end method

.method setLeavingRET()V
    .locals 6

    .line 149
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "ret":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\'."

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 155
    .local v2, "actual":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v4

    instance-of v4, v4, Lorg/checkerframework/org/apache/bcel/generic/RET;

    if-eqz v4, :cond_1

    .line 156
    if-nez v0, :cond_0

    .line 160
    move-object v0, v2

    goto :goto_1

    .line 157
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subroutine with more then one RET detected: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    .end local v2    # "actual":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_1
    :goto_1
    goto :goto_0

    .line 163
    :cond_2
    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/RET;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/RET;->getIndex()I

    move-result v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    if-ne v1, v2, :cond_3

    .line 170
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->theRET:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 171
    return-void

    .line 167
    :cond_3
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subroutine uses \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' which does not match the correct local variable \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_4
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;

    const-string v2, "Subroutine without a RET detected."

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    .end local v0    # "ret":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_5
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "setLeavingRET() called for top-level \'subroutine\' or forgot to set local variable first."

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setLocalVariable(I)V
    .locals 2
    .param p1, "i"    # I

    .line 341
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 344
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    .line 345
    return-void

    .line 342
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "localVariable set twice."

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subSubs()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    .locals 6

    .line 321
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 323
    .local v0, "h":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;>;"
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 324
    .local v2, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v3

    .line 325
    .local v3, "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v4, v3, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    if-eqz v4, :cond_0

    .line 326
    move-object v4, v3

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    .line 327
    .local v4, "targ":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;

    invoke-virtual {v5, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->getSubroutine(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v2    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v3    # "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .end local v4    # "targ":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_0
    goto :goto_0

    .line 330
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    .line 331
    .local v1, "ret":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 8
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "ret":Ljava/lang/StringBuilder;
    const-string v1, "Subroutine: Local variable is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "\', JSRs are \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->theJSRs:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "\', RET is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->theRET:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "\', Instructions: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, " Accessed local variable slots: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->getAccessedLocalsIndices()[I

    move-result-object v1

    .line 129
    .local v1, "alv":[I
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-string v6, " "

    if-ge v5, v3, :cond_0

    aget v7, v1, v5

    .line 130
    .local v7, "element":I
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .end local v7    # "element":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v3, " Recursively (via subsub...routines) accessed local variable slots: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->getRecursivelyAccessedLocalsIndices()[I

    move-result-object v1

    .line 136
    array-length v3, v1

    :goto_1
    if-ge v4, v3, :cond_1

    aget v5, v1, v4

    .line 137
    .local v5, "element":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .end local v5    # "element":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
