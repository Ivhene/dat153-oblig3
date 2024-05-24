.class public Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;
.super Lorg/checkerframework/org/apache/bcel/generic/EmptyVisitor;
.source "InstConstraintVisitor.java"


# static fields
.field private static final GENERIC_ARRAY:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;


# instance fields
.field private cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

.field private frame:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

.field private mg:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/GenericArray;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->GENERIC_ARRAY:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/EmptyVisitor;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->frame:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    .line 77
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 84
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->mg:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 61
    return-void
.end method

.method private _visitStackAccessor(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 207
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->consumeStack(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I

    move-result v0

    .line 208
    .local v0, "consume":I
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v1

    const-string v2, " stack slots: only "

    if-le v0, v1, :cond_0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot consume "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 210
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " slot(s) left on stack!\nStack:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 213
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->produceStack(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I

    move-result v1

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v3}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->consumeStack(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 214
    .local v1, "produce":I
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->maxStack()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot produce "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->maxStack()I

    move-result v3

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " free stack slot(s) left.\nStack:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 216
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 218
    :cond_1
    return-void
.end method

.method private arrayrefOfArrayType(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)Z
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .param p2, "arrayref"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 182
    instance-of v0, p2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-nez v0, :cond_0

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'arrayref\' does not refer to an array but is of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 185
    :cond_0
    instance-of v0, p2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    return v0
.end method

.method private constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V
    .locals 4
    .param p1, "violator"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .param p2, "description"    # Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "fq_classname":Ljava/lang/String;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instruction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 113
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " constraint violated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getObjectType(Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;

    .line 1254
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getReferenceType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    move-result-object v0

    .line 1255
    .local v0, "rt":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v1, :cond_0

    .line 1256
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-object v1

    .line 1258
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expecting ObjectType but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1259
    const/4 v1, 0x0

    return-object v1
.end method

.method private indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .param p2, "index"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 152
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'index\' is not of type int but of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method private locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->frame:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getLocals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    return-object v0
.end method

.method private referenceTypeIsInitialized(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .param p2, "r"    # Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    .line 164
    instance-of v0, p2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Working on an uninitialized object \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method private stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->frame:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getStack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    return-object v0
.end method

.method private valueOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .param p2, "value"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 171
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'value\' is not of type int but of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public setConstantPoolGen(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 0
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 136
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 137
    return-void
.end method

.method public setFrame(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;)V
    .locals 0
    .param p1, "f"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    .line 126
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->frame:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;

    .line 129
    return-void
.end method

.method public setMethodGen(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    .locals 0
    .param p1, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 144
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->mg:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 145
    return-void
.end method

.method public visitAALOAD(Lorg/checkerframework/org/apache/bcel/generic/AALOAD;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/AALOAD;

    .line 464
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 465
    .local v0, "arrayref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 467
    .local v1, "index":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 468
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->arrayrefOfArrayType(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    instance-of v2, v2, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v2, :cond_0

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The \'arrayref\' does not refer to an array with elements of a ReferenceType but to an array of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    .line 472
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 470
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 476
    :cond_0
    return-void
.end method

.method public visitAASTORE(Lorg/checkerframework/org/apache/bcel/generic/AASTORE;)V
    .locals 6
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/AASTORE;

    .line 483
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 484
    .local v0, "arrayref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 485
    .local v1, "index":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    .line 487
    .local v2, "value":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 488
    instance-of v3, v2, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    const-string v4, "."

    if-nez v3, :cond_0

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The \'value\' is not of a ReferenceType but of type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 495
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->arrayrefOfArrayType(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 496
    move-object v3, v0

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    instance-of v3, v3, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v3, :cond_1

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The \'arrayref\' does not refer to an array with elements of a ReferenceType but to an array of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v5, v0

    check-cast v5, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    .line 498
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 502
    :cond_1
    return-void
.end method

.method public visitACONST_NULL(Lorg/checkerframework/org/apache/bcel/generic/ACONST_NULL;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ACONST_NULL;

    .line 510
    return-void
.end method

.method public visitALOAD(Lorg/checkerframework/org/apache/bcel/generic/ALOAD;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ALOAD;

    .line 520
    return-void
.end method

.method public visitANEWARRAY(Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;

    .line 527
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'count\' at the stack top is not of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 532
    :cond_0
    return-void
.end method

.method public visitARETURN(Lorg/checkerframework/org/apache/bcel/generic/ARETURN;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ARETURN;

    .line 539
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'objectref\' at the stack top is not of a ReferenceType but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 542
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    .line 543
    .local v0, "objectref":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)V

    .line 552
    return-void
.end method

.method public visitARRAYLENGTH(Lorg/checkerframework/org/apache/bcel/generic/ARRAYLENGTH;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ARRAYLENGTH;

    .line 559
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 560
    .local v0, "arrayref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->arrayrefOfArrayType(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    .line 561
    return-void
.end method

.method public visitASTORE(Lorg/checkerframework/org/apache/bcel/generic/ASTORE;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ASTORE;

    .line 568
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'objectref\' is not of a ReferenceType or of ReturnaddressType but of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 574
    :cond_0
    return-void
.end method

.method public visitATHROW(Lorg/checkerframework/org/apache/bcel/generic/ATHROW;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ATHROW;

    .line 584
    :try_start_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'objectref\' is not of an (initialized) ObjectType but of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 589
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    return-void

    .line 593
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 594
    .local v0, "exc":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    const-string v1, "Ljava/lang/Throwable;"

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 595
    .local v1, "throwable":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->subclassOf(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The \'objectref\' is not of class Throwable or of a subclass of Throwable, but of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 597
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 596
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .end local v0    # "exc":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .end local v1    # "throwable":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    :cond_2
    nop

    .line 603
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visitBALOAD(Lorg/checkerframework/org/apache/bcel/generic/BALOAD;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/BALOAD;

    .line 610
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 611
    .local v0, "arrayref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 612
    .local v1, "index":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 613
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->arrayrefOfArrayType(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    .line 615
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The \'arrayref\' does not refer to an array with elements of a Type.BYTE or Type.BOOLEAN but to an array of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    .line 618
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 621
    :cond_0
    return-void
.end method

.method public visitBASTORE(Lorg/checkerframework/org/apache/bcel/generic/BASTORE;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/BASTORE;

    .line 628
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 629
    .local v0, "arrayref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 630
    .local v1, "index":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    .line 632
    .local v2, "value":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 633
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->valueOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 634
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->arrayrefOfArrayType(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 635
    move-object v3, v0

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    .line 636
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The \'arrayref\' does not refer to an array with elements of a Type.BYTE or Type.BOOLEAN but to an array of \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    .line 639
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 642
    :cond_0
    return-void
.end method

.method public visitBIPUSH(Lorg/checkerframework/org/apache/bcel/generic/BIPUSH;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/BIPUSH;

    .line 650
    return-void
.end method

.method public visitBREAKPOINT(Lorg/checkerframework/org/apache/bcel/generic/BREAKPOINT;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/BREAKPOINT;

    .line 657
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "In this JustIce verification pass there should not occur an illegal instruction such as BREAKPOINT."

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitCALOAD(Lorg/checkerframework/org/apache/bcel/generic/CALOAD;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/CALOAD;

    .line 666
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 667
    .local v0, "arrayref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 669
    .local v1, "index":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 670
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->arrayrefOfArrayType(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    .line 671
    return-void
.end method

.method public visitCASTORE(Lorg/checkerframework/org/apache/bcel/generic/CASTORE;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/CASTORE;

    .line 678
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 679
    .local v0, "arrayref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 680
    .local v1, "index":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    .line 682
    .local v2, "value":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 683
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->valueOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 684
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->arrayrefOfArrayType(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 685
    move-object v3, v0

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The \'arrayref\' does not refer to an array with elements of type char but to an array of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    .line 687
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 686
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 690
    :cond_0
    return-void
.end method

.method public visitCHECKCAST(Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;

    .line 698
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 699
    .local v0, "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v1, :cond_0

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The \'objectref\' is not of a ReferenceType but of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 708
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    .line 709
    .local v1, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    if-nez v2, :cond_1

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Constant at \'index\' is not a ConstantClass, but \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 712
    :cond_1
    return-void
.end method

.method public visitCPInstruction(Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;

    .line 270
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v0

    .line 271
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 275
    return-void

    .line 272
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Huh?! Constant pool index of instruction \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' illegal? Pass 3a should have checked this!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public visitD2F(Lorg/checkerframework/org/apache/bcel/generic/D2F;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/D2F;

    .line 719
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 722
    :cond_0
    return-void
.end method

.method public visitD2I(Lorg/checkerframework/org/apache/bcel/generic/D2I;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/D2I;

    .line 729
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 732
    :cond_0
    return-void
.end method

.method public visitD2L(Lorg/checkerframework/org/apache/bcel/generic/D2L;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/D2L;

    .line 739
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 742
    :cond_0
    return-void
.end method

.method public visitDADD(Lorg/checkerframework/org/apache/bcel/generic/DADD;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DADD;

    .line 749
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 752
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 755
    :cond_1
    return-void
.end method

.method public visitDALOAD(Lorg/checkerframework/org/apache/bcel/generic/DALOAD;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DALOAD;

    .line 762
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 763
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v0, v2, :cond_0

    .line 764
    return-void

    .line 766
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    const-string v2, "\'."

    const-string v3, "Stack next-to-top must be of type double[] but is \'"

    if-nez v0, :cond_1

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 769
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 770
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v4, :cond_2

    .line 771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 773
    :cond_2
    return-void
.end method

.method public visitDASTORE(Lorg/checkerframework/org/apache/bcel/generic/DASTORE;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DASTORE;

    .line 780
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 783
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 784
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v0, v3, :cond_1

    .line 785
    return-void

    .line 787
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    const-string v3, "Stack next-to-next-to-top must be of type double[] but is \'"

    if-nez v0, :cond_2

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 790
    :cond_2
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 791
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v4, :cond_3

    .line 792
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 794
    :cond_3
    return-void
.end method

.method public visitDCMPG(Lorg/checkerframework/org/apache/bcel/generic/DCMPG;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DCMPG;

    .line 801
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 804
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 807
    :cond_1
    return-void
.end method

.method public visitDCMPL(Lorg/checkerframework/org/apache/bcel/generic/DCMPL;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DCMPL;

    .line 814
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 817
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 820
    :cond_1
    return-void
.end method

.method public visitDCONST(Lorg/checkerframework/org/apache/bcel/generic/DCONST;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DCONST;

    .line 828
    return-void
.end method

.method public visitDDIV(Lorg/checkerframework/org/apache/bcel/generic/DDIV;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DDIV;

    .line 835
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 838
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 841
    :cond_1
    return-void
.end method

.method public visitDLOAD(Lorg/checkerframework/org/apache/bcel/generic/DLOAD;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DLOAD;

    .line 851
    return-void
.end method

.method public visitDMUL(Lorg/checkerframework/org/apache/bcel/generic/DMUL;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DMUL;

    .line 858
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 861
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 864
    :cond_1
    return-void
.end method

.method public visitDNEG(Lorg/checkerframework/org/apache/bcel/generic/DNEG;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DNEG;

    .line 871
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 874
    :cond_0
    return-void
.end method

.method public visitDREM(Lorg/checkerframework/org/apache/bcel/generic/DREM;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DREM;

    .line 881
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 884
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 887
    :cond_1
    return-void
.end method

.method public visitDRETURN(Lorg/checkerframework/org/apache/bcel/generic/DRETURN;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DRETURN;

    .line 894
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 897
    :cond_0
    return-void
.end method

.method public visitDSTORE(Lorg/checkerframework/org/apache/bcel/generic/DSTORE;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DSTORE;

    .line 907
    return-void
.end method

.method public visitDSUB(Lorg/checkerframework/org/apache/bcel/generic/DSUB;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DSUB;

    .line 914
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 917
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 920
    :cond_1
    return-void
.end method

.method public visitDUP(Lorg/checkerframework/org/apache/bcel/generic/DUP;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DUP;

    .line 927
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Won\'t DUP type on stack top \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' because it must occupy exactly one slot, not \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 929
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 931
    :cond_0
    return-void
.end method

.method public visitDUP2(Lorg/checkerframework/org/apache/bcel/generic/DUP2;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DUP2;

    .line 975
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 976
    return-void

    .line 979
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "If stack top\'s size is 1, then stack next-to-top\'s size must also be 1. But it is \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 981
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' of size \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 982
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 980
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 984
    :cond_1
    return-void
.end method

.method public visitDUP2_X1(Lorg/checkerframework/org/apache/bcel/generic/DUP2_X1;)V
    .locals 6
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DUP2_X1;

    .line 991
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    const-string v1, "\'."

    const-string v2, "\' of size \'"

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 992
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "If stack top\'s size is 2, then stack next-to-top\'s size must be 1. But it is \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 994
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 993
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 997
    :cond_0
    return-void

    .line 1001
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "If stack top\'s size is 1, then stack next-to-top\'s size must also be 1. But it is \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1003
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1005
    :cond_2
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "If stack top\'s size is 1, then stack next-to-next-to-top\'s size must also be 1. But it is \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1007
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1006
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1010
    :cond_3
    :goto_0
    return-void
.end method

.method public visitDUP2_X2(Lorg/checkerframework/org/apache/bcel/generic/DUP2_X2;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DUP2_X2;

    .line 1018
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1019
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1020
    return-void

    .line 1023
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "If stack top\'s size is 2 and stack-next-to-top\'s size is 1, then stack next-to-next-to-top\'s size must also be 1. But it is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1025
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' of size \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1026
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1024
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    :cond_1
    return-void

    .line 1033
    :cond_2
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1034
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1035
    return-void

    .line 1037
    :cond_3
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1038
    return-void

    .line 1042
    :cond_4
    :goto_0
    const-string v0, "The operand sizes on the stack do not match any of the four forms of usage of this instruction."

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1043
    return-void
.end method

.method public visitDUP_X1(Lorg/checkerframework/org/apache/bcel/generic/DUP_X1;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DUP_X1;

    .line 938
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    const-string v1, "\'."

    const-string v2, "\' should occupy exactly one slot, not \'"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type on stack top \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 940
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 942
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type on stack next-to-top \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 944
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 945
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 943
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 947
    :cond_1
    return-void
.end method

.method public visitDUP_X2(Lorg/checkerframework/org/apache/bcel/generic/DUP_X2;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DUP_X2;

    .line 954
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    const-string v1, "\'."

    const-string v2, "\' of size \'"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack top type must be of size 1, but is \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 956
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 958
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 959
    return-void

    .line 962
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "If stack top\'s size is 1 and stack next-to-top\'s size is 1, stack next-to-next-to-top\'s size must also be 1, but is: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 966
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 963
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 968
    :cond_2
    return-void
.end method

.method public visitF2D(Lorg/checkerframework/org/apache/bcel/generic/F2D;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/F2D;

    .line 1050
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1053
    :cond_0
    return-void
.end method

.method public visitF2I(Lorg/checkerframework/org/apache/bcel/generic/F2I;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/F2I;

    .line 1060
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1063
    :cond_0
    return-void
.end method

.method public visitF2L(Lorg/checkerframework/org/apache/bcel/generic/F2L;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/F2L;

    .line 1070
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1073
    :cond_0
    return-void
.end method

.method public visitFADD(Lorg/checkerframework/org/apache/bcel/generic/FADD;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FADD;

    .line 1080
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1083
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1086
    :cond_1
    return-void
.end method

.method public visitFALOAD(Lorg/checkerframework/org/apache/bcel/generic/FALOAD;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FALOAD;

    .line 1093
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1094
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v0, v2, :cond_0

    .line 1095
    return-void

    .line 1097
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    const-string v2, "\'."

    const-string v3, "Stack next-to-top must be of type float[] but is \'"

    if-nez v0, :cond_1

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1100
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 1101
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v4, :cond_2

    .line 1102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1104
    :cond_2
    return-void
.end method

.method public visitFASTORE(Lorg/checkerframework/org/apache/bcel/generic/FASTORE;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FASTORE;

    .line 1111
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1114
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1115
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v0, v3, :cond_1

    .line 1116
    return-void

    .line 1118
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    const-string v3, "Stack next-to-next-to-top must be of type float[] but is \'"

    if-nez v0, :cond_2

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1121
    :cond_2
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 1122
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v4, :cond_3

    .line 1123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1125
    :cond_3
    return-void
.end method

.method public visitFCMPG(Lorg/checkerframework/org/apache/bcel/generic/FCMPG;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FCMPG;

    .line 1132
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1135
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1138
    :cond_1
    return-void
.end method

.method public visitFCMPL(Lorg/checkerframework/org/apache/bcel/generic/FCMPL;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FCMPL;

    .line 1145
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1148
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1151
    :cond_1
    return-void
.end method

.method public visitFCONST(Lorg/checkerframework/org/apache/bcel/generic/FCONST;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FCONST;

    .line 1159
    return-void
.end method

.method public visitFDIV(Lorg/checkerframework/org/apache/bcel/generic/FDIV;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FDIV;

    .line 1166
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1169
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1172
    :cond_1
    return-void
.end method

.method public visitFLOAD(Lorg/checkerframework/org/apache/bcel/generic/FLOAD;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FLOAD;

    .line 1182
    return-void
.end method

.method public visitFMUL(Lorg/checkerframework/org/apache/bcel/generic/FMUL;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FMUL;

    .line 1189
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1192
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1195
    :cond_1
    return-void
.end method

.method public visitFNEG(Lorg/checkerframework/org/apache/bcel/generic/FNEG;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FNEG;

    .line 1202
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1205
    :cond_0
    return-void
.end method

.method public visitFREM(Lorg/checkerframework/org/apache/bcel/generic/FREM;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FREM;

    .line 1212
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1215
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1218
    :cond_1
    return-void
.end method

.method public visitFRETURN(Lorg/checkerframework/org/apache/bcel/generic/FRETURN;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FRETURN;

    .line 1225
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1228
    :cond_0
    return-void
.end method

.method public visitFSTORE(Lorg/checkerframework/org/apache/bcel/generic/FSTORE;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FSTORE;

    .line 1238
    return-void
.end method

.method public visitFSUB(Lorg/checkerframework/org/apache/bcel/generic/FSUB;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FSUB;

    .line 1245
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1248
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1251
    :cond_1
    return-void
.end method

.method public visitFieldInstruction(Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;)V
    .locals 8
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;

    .line 286
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 287
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;

    const-string v2, "\'."

    if-nez v1, :cond_0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 289
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' should refer to a CONSTANT_Fieldref_info structure, but refers to \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 292
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 293
    .local v1, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v3, v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v3, :cond_1

    .line 294
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v4

    .line 296
    .local v4, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass2()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v5

    .line 297
    .local v5, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Class \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is referenced, but cannot be loaded and resolved: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 301
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v5    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :cond_1
    return-void
.end method

.method public visitGETFIELD(Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;)V
    .locals 18
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;

    .line 1268
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 1269
    .local v0, "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v3, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "\'."

    if-nez v3, :cond_0

    :try_start_1
    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eq v0, v3, :cond_0

    .line 1270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack top should be an object reference that\'s not an array reference, but is \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1273
    :cond_0
    iget-object v3, v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;->getFieldName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v3

    .line 1275
    .local v3, "field_name":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->getObjectType(Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v5

    .line 1276
    .local v5, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v6

    .line 1277
    .local v6, "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    const/4 v7, 0x0

    .line 1278
    .local v7, "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    array-length v8, v6

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_2

    aget-object v11, v6, v10

    .line 1279
    .local v11, "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1280
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignature()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v12

    .line 1281
    .local v12, "f_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    iget-object v13, v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2, v13}, Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v13

    .line 1285
    .local v13, "o_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v12, v13}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1286
    move-object v7, v11

    .line 1287
    goto :goto_1

    .line 1278
    .end local v11    # "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v12    # "f_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v13    # "o_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1292
    :cond_2
    :goto_1
    if-nez v7, :cond_9

    .line 1293
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperClasses()[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v8

    .line 1295
    .local v8, "superclasses":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    array-length v10, v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_6

    aget-object v12, v8, v11

    .line 1296
    .local v12, "superclass":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v13

    move-object v6, v13

    .line 1297
    array-length v13, v6

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_5

    aget-object v15, v6, v14

    .line 1298
    .local v15, "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual {v15}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1299
    invoke-virtual {v15}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v9

    .line 1300
    .local v9, "f_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    move-object/from16 v16, v0

    .end local v0    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .local v16, "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 1301
    .local v0, "o_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v9, v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1302
    move-object v7, v15

    .line 1303
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getAccessFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x5

    if-nez v10, :cond_7

    .line 1304
    const/4 v7, 0x0

    goto :goto_4

    .line 1298
    .end local v9    # "f_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v16    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .local v0, "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_3
    move-object/from16 v16, v0

    .line 1297
    .end local v0    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v15    # "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .restart local v16    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    goto :goto_3

    .end local v16    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .restart local v0    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_5
    move-object/from16 v16, v0

    .line 1295
    .end local v0    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v12    # "superclass":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v16    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v16    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .restart local v0    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_6
    move-object/from16 v16, v0

    .line 1311
    .end local v0    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .restart local v16    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    goto :goto_5

    .line 1312
    :cond_8
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Field \'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "\' not found in "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    .end local p1    # "o":Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;
    throw v0

    .line 1292
    .end local v8    # "superclasses":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v16    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .restart local v0    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .restart local p1    # "o":Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;
    :cond_9
    move-object/from16 v16, v0

    .line 1316
    .end local v0    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .restart local v16    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :goto_5
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->isProtected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1317
    invoke-direct/range {p0 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->getObjectType(Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v0

    .line 1318
    .local v0, "classtype":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    iget-object v8, v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->mg:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v8

    .line 1320
    .local v8, "curr":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    invoke-virtual {v0, v8}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1321
    invoke-virtual {v8, v0}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->subclassOf(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1322
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v9

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v9

    .line 1323
    .local v9, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v10, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v9, v10, :cond_b

    .line 1324
    return-void

    .line 1326
    :cond_b
    instance-of v10, v9, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-nez v10, :cond_c

    .line 1327
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The \'objectref\' must refer to an object that\'s not an array. Found instead: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1329
    :cond_c
    move-object v4, v9

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 1330
    .local v4, "objreftype":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    invoke-virtual {v4, v8}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 1331
    invoke-virtual {v4, v8}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->subclassOf(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)Z

    .line 1344
    .end local v0    # "classtype":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .end local v4    # "objreftype":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .end local v8    # "curr":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .end local v9    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_d
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Referenced field \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\' is static which it shouldn\'t be."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1351
    .end local v3    # "field_name":Ljava/lang/String;
    .end local v5    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v6    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v7    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v16    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_e
    nop

    .line 1352
    return-void

    .line 1348
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public visitGETSTATIC(Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;

    .line 1360
    return-void
.end method

.method public visitGOTO(Lorg/checkerframework/org/apache/bcel/generic/GOTO;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/GOTO;

    .line 1368
    return-void
.end method

.method public visitGOTO_W(Lorg/checkerframework/org/apache/bcel/generic/GOTO_W;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/GOTO_W;

    .line 1376
    return-void
.end method

.method public visitI2B(Lorg/checkerframework/org/apache/bcel/generic/I2B;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/I2B;

    .line 1383
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1386
    :cond_0
    return-void
.end method

.method public visitI2C(Lorg/checkerframework/org/apache/bcel/generic/I2C;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/I2C;

    .line 1393
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1396
    :cond_0
    return-void
.end method

.method public visitI2D(Lorg/checkerframework/org/apache/bcel/generic/I2D;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/I2D;

    .line 1403
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1406
    :cond_0
    return-void
.end method

.method public visitI2F(Lorg/checkerframework/org/apache/bcel/generic/I2F;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/I2F;

    .line 1413
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1416
    :cond_0
    return-void
.end method

.method public visitI2L(Lorg/checkerframework/org/apache/bcel/generic/I2L;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/I2L;

    .line 1423
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1426
    :cond_0
    return-void
.end method

.method public visitI2S(Lorg/checkerframework/org/apache/bcel/generic/I2S;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/I2S;

    .line 1433
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1436
    :cond_0
    return-void
.end method

.method public visitIADD(Lorg/checkerframework/org/apache/bcel/generic/IADD;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IADD;

    .line 1443
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1446
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1449
    :cond_1
    return-void
.end method

.method public visitIALOAD(Lorg/checkerframework/org/apache/bcel/generic/IALOAD;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IALOAD;

    .line 1456
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1457
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v0, v2, :cond_0

    .line 1458
    return-void

    .line 1460
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    const-string v2, "\'."

    const-string v3, "Stack next-to-top must be of type int[] but is \'"

    if-nez v0, :cond_1

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1463
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 1464
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v4, :cond_2

    .line 1465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1467
    :cond_2
    return-void
.end method

.method public visitIAND(Lorg/checkerframework/org/apache/bcel/generic/IAND;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IAND;

    .line 1474
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1477
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1480
    :cond_1
    return-void
.end method

.method public visitIASTORE(Lorg/checkerframework/org/apache/bcel/generic/IASTORE;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IASTORE;

    .line 1487
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1490
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1491
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v0, v3, :cond_1

    .line 1492
    return-void

    .line 1494
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    const-string v3, "Stack next-to-next-to-top must be of type int[] but is \'"

    if-nez v0, :cond_2

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1497
    :cond_2
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 1498
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v4, :cond_3

    .line 1499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1501
    :cond_3
    return-void
.end method

.method public visitICONST(Lorg/checkerframework/org/apache/bcel/generic/ICONST;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ICONST;

    .line 1509
    return-void
.end method

.method public visitIDIV(Lorg/checkerframework/org/apache/bcel/generic/IDIV;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IDIV;

    .line 1516
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1519
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1522
    :cond_1
    return-void
.end method

.method public visitIFEQ(Lorg/checkerframework/org/apache/bcel/generic/IFEQ;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFEQ;

    .line 1639
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1642
    :cond_0
    return-void
.end method

.method public visitIFGE(Lorg/checkerframework/org/apache/bcel/generic/IFGE;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFGE;

    .line 1649
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1652
    :cond_0
    return-void
.end method

.method public visitIFGT(Lorg/checkerframework/org/apache/bcel/generic/IFGT;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFGT;

    .line 1659
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1662
    :cond_0
    return-void
.end method

.method public visitIFLE(Lorg/checkerframework/org/apache/bcel/generic/IFLE;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFLE;

    .line 1669
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1672
    :cond_0
    return-void
.end method

.method public visitIFLT(Lorg/checkerframework/org/apache/bcel/generic/IFLT;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFLT;

    .line 1679
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1682
    :cond_0
    return-void
.end method

.method public visitIFNE(Lorg/checkerframework/org/apache/bcel/generic/IFNE;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFNE;

    .line 1689
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1692
    :cond_0
    return-void
.end method

.method public visitIFNONNULL(Lorg/checkerframework/org/apache/bcel/generic/IFNONNULL;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFNONNULL;

    .line 1699
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v0, :cond_0

    .line 1700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of a ReferenceType, but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1702
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)V

    .line 1703
    return-void
.end method

.method public visitIFNULL(Lorg/checkerframework/org/apache/bcel/generic/IFNULL;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IFNULL;

    .line 1710
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v0, :cond_0

    .line 1711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of a ReferenceType, but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1713
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)V

    .line 1714
    return-void
.end method

.method public visitIF_ACMPEQ(Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPEQ;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPEQ;

    .line 1529
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    const-string v1, "\'."

    if-nez v0, :cond_0

    .line 1530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The value at the stack top is not of a ReferenceType, but of type \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1534
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v0, :cond_1

    .line 1535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of a ReferenceType, but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1539
    :cond_1
    return-void
.end method

.method public visitIF_ACMPNE(Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPNE;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPNE;

    .line 1546
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    const-string v1, "\'."

    if-nez v0, :cond_0

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The value at the stack top is not of a ReferenceType, but of type \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1550
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v0, :cond_1

    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of a ReferenceType, but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1554
    :cond_1
    return-void
.end method

.method public visitIF_ICMPEQ(Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPEQ;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPEQ;

    .line 1561
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1564
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1567
    :cond_1
    return-void
.end method

.method public visitIF_ICMPGE(Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGE;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGE;

    .line 1574
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1577
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1580
    :cond_1
    return-void
.end method

.method public visitIF_ICMPGT(Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGT;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGT;

    .line 1587
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1590
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1593
    :cond_1
    return-void
.end method

.method public visitIF_ICMPLE(Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLE;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLE;

    .line 1600
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1603
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1606
    :cond_1
    return-void
.end method

.method public visitIF_ICMPLT(Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLT;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLT;

    .line 1613
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1616
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1619
    :cond_1
    return-void
.end method

.method public visitIF_ICMPNE(Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPNE;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPNE;

    .line 1626
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1629
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1632
    :cond_1
    return-void
.end method

.method public visitIINC(Lorg/checkerframework/org/apache/bcel/generic/IINC;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IINC;

    .line 1722
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->maxLocals()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/IINC;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/IINC;->getIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/IINC;->getIndex()I

    move-result v1

    add-int/2addr v1, v2

    :goto_0
    if-gt v0, v1, :cond_1

    .line 1723
    const-string v0, "The \'index\' is not a valid index into the local variable array."

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1726
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/IINC;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 1727
    return-void
.end method

.method public visitILOAD(Lorg/checkerframework/org/apache/bcel/generic/ILOAD;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ILOAD;

    .line 1735
    return-void
.end method

.method public visitIMPDEP1(Lorg/checkerframework/org/apache/bcel/generic/IMPDEP1;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IMPDEP1;

    .line 1742
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "In this JustIce verification pass there should not occur an illegal instruction such as IMPDEP1."

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitIMPDEP2(Lorg/checkerframework/org/apache/bcel/generic/IMPDEP2;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IMPDEP2;

    .line 1751
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "In this JustIce verification pass there should not occur an illegal instruction such as IMPDEP2."

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitIMUL(Lorg/checkerframework/org/apache/bcel/generic/IMUL;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IMUL;

    .line 1760
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 1761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1763
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 1764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1766
    :cond_1
    return-void
.end method

.method public visitINEG(Lorg/checkerframework/org/apache/bcel/generic/INEG;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INEG;

    .line 1773
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 1774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1776
    :cond_0
    return-void
.end method

.method public visitINSTANCEOF(Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;

    .line 1784
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 1785
    .local v0, "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v1, :cond_0

    .line 1786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The \'objectref\' is not of a ReferenceType but of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1794
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    .line 1795
    .local v1, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    if-nez v2, :cond_1

    .line 1796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Constant at \'index\' is not a ConstantClass, but \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1798
    :cond_1
    return-void
.end method

.method public visitINVOKEDYNAMIC(Lorg/checkerframework/org/apache/bcel/generic/INVOKEDYNAMIC;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INVOKEDYNAMIC;

    .line 1806
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "INVOKEDYNAMIC instruction is not supported at this time"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitINVOKEINTERFACE(Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;)V
    .locals 10
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;

    .line 1816
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;->getCount()I

    move-result v0

    .line 1817
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 1818
    const-string v1, "The \'count\' argument must not be 0."

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1826
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 1827
    .local v1, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    const-string v3, "\'."

    if-eqz v2, :cond_1

    .line 1828
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1829
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v4

    .line 1830
    .local v4, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass2()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v5

    .line 1831
    .local v5, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 1832
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Class \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is referenced, but cannot be loaded and resolved: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1837
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v5    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;->getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    .line 1838
    .local v2, "argtypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    array-length v4, v2

    .line 1840
    .local v4, "nargs":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_6

    .line 1841
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v6

    add-int/lit8 v7, v4, -0x1

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v6

    .line 1842
    .local v6, "fromStack":Lorg/checkerframework/org/apache/bcel/generic/Type;
    aget-object v7, v2, v5

    .line 1843
    .local v7, "fromDesc":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v7, v8, :cond_2

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v7, v8, :cond_2

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v7, v8, :cond_2

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne v7, v8, :cond_3

    .line 1847
    :cond_2
    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 1849
    :cond_3
    invoke-virtual {v6, v7}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1850
    instance-of v8, v6, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v8, :cond_4

    instance-of v8, v7, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v8, :cond_4

    .line 1851
    move-object v8, v6

    check-cast v8, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    .line 1859
    .local v8, "rFromStack":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    invoke-direct {p0, p1, v8}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)V

    .line 1860
    .end local v8    # "rFromStack":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    goto :goto_1

    .line 1862
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expecting a \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' but found a \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' on the stack."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1840
    .end local v6    # "fromStack":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v7    # "fromDesc":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_5
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1867
    .end local v5    # "i":I
    :cond_6
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v5

    .line 1868
    .local v5, "objref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v6, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v5, v6, :cond_7

    .line 1869
    return-void

    .line 1871
    :cond_7
    instance-of v6, v5, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v6, :cond_8

    .line 1872
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting a reference type as \'objectref\' on the stack, not a \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1874
    :cond_8
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-direct {p0, p1, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)V

    .line 1875
    instance-of v6, v5, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-nez v6, :cond_a

    .line 1876
    instance-of v6, v5, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-nez v6, :cond_9

    .line 1877
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting an ObjectType as \'objectref\' on the stack, not a \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_2

    .line 1880
    :cond_9
    sget-object v5, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->GENERIC_ARRAY:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 1892
    :cond_a
    :goto_2
    const/4 v6, 0x1

    .line 1893
    .local v6, "counted_count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v4, :cond_b

    .line 1894
    aget-object v8, v2, v7

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v8

    add-int/2addr v6, v8

    .line 1893
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1896
    .end local v7    # "i":I
    :cond_b
    if-eq v0, v6, :cond_c

    .line 1897
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The \'count\' argument should probably read \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' but is \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1899
    :cond_c
    return-void
.end method

.method public visitINVOKESPECIAL(Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;)V
    .locals 13
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;

    .line 1908
    const-string v0, "<init>"

    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getMethodName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1909
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-nez v1, :cond_0

    .line 1910
    const-string v1, "Possibly initializing object twice. A valid instruction sequence must not have an uninitialized object on the operand stack or in a local variable during a backwards branch, or in a local variable in code protected by an exception handler. Please see The Java Virtual Machine Specification, Second Edition, 4.9.4 (pages 147 and 148) for details."

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1918
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 1919
    .local v1, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "\'."

    if-eqz v2, :cond_1

    .line 1920
    :try_start_1
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1921
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v4

    .line 1922
    .local v4, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass2()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v5

    .line 1923
    .local v5, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 1924
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Class \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is referenced, but cannot be loaded and resolved: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1929
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v5    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    .line 1930
    .local v2, "argtypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    array-length v4, v2

    .line 1932
    .local v4, "nargs":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_7

    .line 1933
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v6

    add-int/lit8 v7, v4, -0x1

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v6

    .line 1934
    .local v6, "fromStack":Lorg/checkerframework/org/apache/bcel/generic/Type;
    aget-object v7, v2, v5

    .line 1935
    .local v7, "fromDesc":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v7, v8, :cond_2

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v7, v8, :cond_2

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v7, v8, :cond_2

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne v7, v8, :cond_3

    .line 1939
    :cond_2
    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    move-object v7, v8

    .line 1941
    :cond_3
    invoke-virtual {v6, v7}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1942
    instance-of v8, v6, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "\' but found a \'"

    const-string v10, "Expecting a \'"

    if-eqz v8, :cond_5

    :try_start_2
    instance-of v8, v7, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v8, :cond_5

    .line 1943
    move-object v8, v6

    check-cast v8, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    .line 1944
    .local v8, "rFromStack":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    move-object v11, v7

    check-cast v11, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    .line 1947
    .local v11, "rFromDesc":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    invoke-virtual {v8, v11}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->isAssignmentCompatibleWith(Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1948
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' on the stack (which is not assignment compatible)."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v9}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1951
    :cond_4
    invoke-direct {p0, p1, v8}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)V

    .line 1952
    .end local v8    # "rFromStack":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    .end local v11    # "rFromDesc":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    goto :goto_1

    .line 1954
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' on the stack."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1932
    .end local v6    # "fromStack":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v7    # "fromDesc":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_6
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 1959
    .end local v5    # "i":I
    :cond_7
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v5

    .line 1960
    .local v5, "objref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v6, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v5, v6, :cond_8

    .line 1961
    return-void

    .line 1963
    :cond_8
    instance-of v6, v5, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v6, :cond_9

    .line 1964
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting a reference type as \'objectref\' on the stack, not a \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1966
    :cond_9
    const/4 v6, 0x0

    .line 1967
    .local v6, "objref_classname":Ljava/lang/String;
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v7}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getMethodName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1968
    move-object v0, v5

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)V

    .line 1969
    instance-of v0, v5, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-nez v0, :cond_b

    .line 1970
    instance-of v0, v5, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-nez v0, :cond_a

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting an ObjectType as \'objectref\' on the stack, not a \'"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_2

    .line 1974
    :cond_a
    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->GENERIC_ARRAY:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-object v5, v0

    .line 1978
    :cond_b
    :goto_2
    move-object v0, v5

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    .end local v6    # "objref_classname":Ljava/lang/String;
    .local v0, "objref_classname":Ljava/lang/String;
    goto :goto_3

    .line 1981
    .end local v0    # "objref_classname":Ljava/lang/String;
    .restart local v6    # "objref_classname":Ljava/lang/String;
    :cond_c
    instance-of v0, v5, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-nez v0, :cond_d

    .line 1982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting an UninitializedObjectType as \'objectref\' on the stack, not a \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'. Otherwise, you couldn\'t invoke a method since an array has no methods (not to speak of a return address)."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1985
    :cond_d
    move-object v0, v5

    check-cast v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;->getInitialized()Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1989
    .end local v6    # "objref_classname":Ljava/lang/String;
    .restart local v0    # "objref_classname":Ljava/lang/String;
    :goto_3
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v3}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getClassName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v3

    .line 1990
    .local v3, "theClass":Ljava/lang/String;
    invoke-static {v0, v3}, Lorg/checkerframework/org/apache/bcel/Repository;->instanceOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1991
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The \'objref\' item \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' does not implement \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' as expected."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1997
    .end local v0    # "objref_classname":Ljava/lang/String;
    .end local v1    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v2    # "argtypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v3    # "theClass":Ljava/lang/String;
    .end local v4    # "nargs":I
    .end local v5    # "objref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_e
    nop

    .line 1998
    return-void

    .line 1994
    :catch_0
    move-exception v0

    .line 1996
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visitINVOKESTATIC(Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;)V
    .locals 11
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;

    .line 2008
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 2009
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v1, :cond_0

    .line 2010
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2011
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v2

    .line 2012
    .local v2, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass2()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v3

    .line 2013
    .local v3, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 2014
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is referenced, but cannot be loaded and resolved: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2018
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v3    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;->getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 2019
    .local v1, "argtypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    array-length v2, v1

    .line 2021
    .local v2, "nargs":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_6

    .line 2022
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    .line 2023
    .local v4, "fromStack":Lorg/checkerframework/org/apache/bcel/generic/Type;
    aget-object v5, v1, v3

    .line 2024
    .local v5, "fromDesc":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v6, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v5, v6, :cond_1

    sget-object v6, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v5, v6, :cond_1

    sget-object v6, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v5, v6, :cond_1

    sget-object v6, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne v5, v6, :cond_2

    .line 2028
    :cond_1
    sget-object v6, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    move-object v5, v6

    .line 2030
    :cond_2
    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2031
    instance-of v6, v4, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "\' but found a \'"

    const-string v8, "Expecting a \'"

    if-eqz v6, :cond_4

    :try_start_1
    instance-of v6, v5, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v6, :cond_4

    .line 2032
    move-object v6, v4

    check-cast v6, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    .line 2033
    .local v6, "rFromStack":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    move-object v9, v5

    check-cast v9, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    .line 2036
    .local v9, "rFromDesc":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    invoke-virtual {v6, v9}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->isAssignmentCompatibleWith(Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2037
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' on the stack (which is not assignment compatible)."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2040
    :cond_3
    invoke-direct {p0, p1, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)V

    .line 2041
    .end local v6    # "rFromStack":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    .end local v9    # "rFromDesc":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    goto :goto_1

    .line 2043
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' on the stack."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2021
    .end local v4    # "fromStack":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v5    # "fromDesc":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 2050
    .end local v0    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v1    # "argtypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v2    # "nargs":I
    .end local v3    # "i":I
    :cond_6
    nop

    .line 2051
    return-void

    .line 2047
    :catch_0
    move-exception v0

    .line 2049
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visitINVOKEVIRTUAL(Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;)V
    .locals 12
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;

    .line 2061
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 2062
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "\'."

    if-eqz v1, :cond_0

    .line 2063
    :try_start_1
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2064
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v3

    .line 2065
    .local v3, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass2()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v4

    .line 2066
    .local v4, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 2067
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is referenced, but cannot be loaded and resolved: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2072
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v4    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;->getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 2073
    .local v1, "argtypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    array-length v3, v1

    .line 2075
    .local v3, "nargs":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_6

    .line 2076
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    sub-int/2addr v6, v4

    invoke-virtual {v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v5

    .line 2077
    .local v5, "fromStack":Lorg/checkerframework/org/apache/bcel/generic/Type;
    aget-object v6, v1, v4

    .line 2078
    .local v6, "fromDesc":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v6, v7, :cond_1

    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v6, v7, :cond_1

    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v6, v7, :cond_1

    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne v6, v7, :cond_2

    .line 2082
    :cond_1
    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    move-object v6, v7

    .line 2084
    :cond_2
    invoke-virtual {v5, v6}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2085
    instance-of v7, v5, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "\' but found a \'"

    const-string v9, "Expecting a \'"

    if-eqz v7, :cond_4

    :try_start_2
    instance-of v7, v6, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v7, :cond_4

    .line 2086
    move-object v7, v5

    check-cast v7, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    .line 2087
    .local v7, "rFromStack":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    move-object v10, v6

    check-cast v10, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    .line 2090
    .local v10, "rFromDesc":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    invoke-virtual {v7, v10}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->isAssignmentCompatibleWith(Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 2091
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' on the stack (which is not assignment compatible)."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2094
    :cond_3
    invoke-direct {p0, p1, v7}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)V

    .line 2095
    .end local v7    # "rFromStack":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    .end local v10    # "rFromDesc":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    goto :goto_1

    .line 2097
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' on the stack."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2075
    .end local v5    # "fromStack":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v6    # "fromDesc":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 2102
    .end local v4    # "i":I
    :cond_6
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    .line 2103
    .local v4, "objref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v5, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v4, v5, :cond_7

    .line 2104
    return-void

    .line 2106
    :cond_7
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v5, :cond_8

    .line 2107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expecting a reference type as \'objectref\' on the stack, not a \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2109
    :cond_8
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-direct {p0, p1, v5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)V

    .line 2110
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-nez v5, :cond_a

    .line 2111
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-nez v5, :cond_9

    .line 2112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expecting an ObjectType as \'objectref\' on the stack, not a \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_2

    .line 2115
    :cond_9
    sget-object v2, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->GENERIC_ARRAY:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-object v4, v2

    .line 2119
    :cond_a
    :goto_2
    move-object v2, v4

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 2121
    .local v2, "objref_classname":Ljava/lang/String;
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v5}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;->getClassName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v5

    .line 2123
    .local v5, "theClass":Ljava/lang/String;
    invoke-static {v2, v5}, Lorg/checkerframework/org/apache/bcel/Repository;->instanceOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The \'objref\' item \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' does not implement \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' as expected."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2129
    .end local v0    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v1    # "argtypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v2    # "objref_classname":Ljava/lang/String;
    .end local v3    # "nargs":I
    .end local v4    # "objref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v5    # "theClass":Ljava/lang/String;
    :cond_b
    nop

    .line 2130
    return-void

    .line 2126
    :catch_0
    move-exception v0

    .line 2128
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visitIOR(Lorg/checkerframework/org/apache/bcel/generic/IOR;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IOR;

    .line 2137
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2140
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2143
    :cond_1
    return-void
.end method

.method public visitIREM(Lorg/checkerframework/org/apache/bcel/generic/IREM;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IREM;

    .line 2150
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2153
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2156
    :cond_1
    return-void
.end method

.method public visitIRETURN(Lorg/checkerframework/org/apache/bcel/generic/IRETURN;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IRETURN;

    .line 2163
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2166
    :cond_0
    return-void
.end method

.method public visitISHL(Lorg/checkerframework/org/apache/bcel/generic/ISHL;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ISHL;

    .line 2173
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2176
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2179
    :cond_1
    return-void
.end method

.method public visitISHR(Lorg/checkerframework/org/apache/bcel/generic/ISHR;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ISHR;

    .line 2186
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2189
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2192
    :cond_1
    return-void
.end method

.method public visitISTORE(Lorg/checkerframework/org/apache/bcel/generic/ISTORE;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ISTORE;

    .line 2202
    return-void
.end method

.method public visitISUB(Lorg/checkerframework/org/apache/bcel/generic/ISUB;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ISUB;

    .line 2209
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2212
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2215
    :cond_1
    return-void
.end method

.method public visitIUSHR(Lorg/checkerframework/org/apache/bcel/generic/IUSHR;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IUSHR;

    .line 2222
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2225
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2228
    :cond_1
    return-void
.end method

.method public visitIXOR(Lorg/checkerframework/org/apache/bcel/generic/IXOR;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IXOR;

    .line 2235
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2238
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2241
    :cond_1
    return-void
.end method

.method public visitInvokeInstruction(Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;

    .line 312
    return-void
.end method

.method public visitJSR(Lorg/checkerframework/org/apache/bcel/generic/JSR;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/JSR;

    .line 2249
    return-void
.end method

.method public visitJSR_W(Lorg/checkerframework/org/apache/bcel/generic/JSR_W;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/JSR_W;

    .line 2257
    return-void
.end method

.method public visitL2D(Lorg/checkerframework/org/apache/bcel/generic/L2D;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/L2D;

    .line 2264
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 2265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2267
    :cond_0
    return-void
.end method

.method public visitL2F(Lorg/checkerframework/org/apache/bcel/generic/L2F;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/L2F;

    .line 2274
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 2275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2277
    :cond_0
    return-void
.end method

.method public visitL2I(Lorg/checkerframework/org/apache/bcel/generic/L2I;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/L2I;

    .line 2284
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 2285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2287
    :cond_0
    return-void
.end method

.method public visitLADD(Lorg/checkerframework/org/apache/bcel/generic/LADD;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LADD;

    .line 2294
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2297
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2300
    :cond_1
    return-void
.end method

.method public visitLALOAD(Lorg/checkerframework/org/apache/bcel/generic/LALOAD;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LALOAD;

    .line 2307
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 2308
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v0, v2, :cond_0

    .line 2309
    return-void

    .line 2311
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    const-string v2, "\'."

    const-string v3, "Stack next-to-top must be of type long[] but is \'"

    if-nez v0, :cond_1

    .line 2312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2314
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 2315
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v4, :cond_2

    .line 2316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2318
    :cond_2
    return-void
.end method

.method public visitLAND(Lorg/checkerframework/org/apache/bcel/generic/LAND;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LAND;

    .line 2325
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2328
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2331
    :cond_1
    return-void
.end method

.method public visitLASTORE(Lorg/checkerframework/org/apache/bcel/generic/LASTORE;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LASTORE;

    .line 2338
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2341
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 2342
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v0, v3, :cond_1

    .line 2343
    return-void

    .line 2345
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    const-string v3, "Stack next-to-next-to-top must be of type long[] but is \'"

    if-nez v0, :cond_2

    .line 2346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2348
    :cond_2
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 2349
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v4, :cond_3

    .line 2350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2352
    :cond_3
    return-void
.end method

.method public visitLCMP(Lorg/checkerframework/org/apache/bcel/generic/LCMP;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LCMP;

    .line 2359
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2362
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2365
    :cond_1
    return-void
.end method

.method public visitLCONST(Lorg/checkerframework/org/apache/bcel/generic/LCONST;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LCONST;

    .line 2373
    return-void
.end method

.method public visitLDC(Lorg/checkerframework/org/apache/bcel/generic/LDC;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LDC;

    .line 2382
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LDC;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 2383
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    if-nez v1, :cond_0

    .line 2387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referenced constant should be a CONSTANT_Integer, a CONSTANT_Float, a CONSTANT_String or a CONSTANT_Class, but is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2391
    :cond_0
    return-void
.end method

.method public visitLDC2_W(Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;

    .line 2417
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 2418
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    if-nez v1, :cond_0

    .line 2420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referenced constant should be a CONSTANT_Integer, a CONSTANT_Float or a CONSTANT_String, but is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2423
    :cond_0
    return-void
.end method

.method public visitLDC_W(Lorg/checkerframework/org/apache/bcel/generic/LDC_W;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LDC_W;

    .line 2399
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LDC_W;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 2400
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    if-nez v1, :cond_0

    .line 2404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referenced constant should be a CONSTANT_Integer, a CONSTANT_Float, a CONSTANT_String or a CONSTANT_Class, but is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2408
    :cond_0
    return-void
.end method

.method public visitLDIV(Lorg/checkerframework/org/apache/bcel/generic/LDIV;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LDIV;

    .line 2430
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2433
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2436
    :cond_1
    return-void
.end method

.method public visitLLOAD(Lorg/checkerframework/org/apache/bcel/generic/LLOAD;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LLOAD;

    .line 2446
    return-void
.end method

.method public visitLMUL(Lorg/checkerframework/org/apache/bcel/generic/LMUL;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LMUL;

    .line 2453
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2456
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2459
    :cond_1
    return-void
.end method

.method public visitLNEG(Lorg/checkerframework/org/apache/bcel/generic/LNEG;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LNEG;

    .line 2466
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 2467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2469
    :cond_0
    return-void
.end method

.method public visitLOOKUPSWITCH(Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;

    .line 2476
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 2477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2480
    :cond_0
    return-void
.end method

.method public visitLOR(Lorg/checkerframework/org/apache/bcel/generic/LOR;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LOR;

    .line 2487
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2490
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2493
    :cond_1
    return-void
.end method

.method public visitLREM(Lorg/checkerframework/org/apache/bcel/generic/LREM;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LREM;

    .line 2500
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2503
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2506
    :cond_1
    return-void
.end method

.method public visitLRETURN(Lorg/checkerframework/org/apache/bcel/generic/LRETURN;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LRETURN;

    .line 2513
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 2514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2516
    :cond_0
    return-void
.end method

.method public visitLSHL(Lorg/checkerframework/org/apache/bcel/generic/LSHL;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LSHL;

    .line 2523
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2526
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2529
    :cond_1
    return-void
.end method

.method public visitLSHR(Lorg/checkerframework/org/apache/bcel/generic/LSHR;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LSHR;

    .line 2536
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2539
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2542
    :cond_1
    return-void
.end method

.method public visitLSTORE(Lorg/checkerframework/org/apache/bcel/generic/LSTORE;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LSTORE;

    .line 2552
    return-void
.end method

.method public visitLSUB(Lorg/checkerframework/org/apache/bcel/generic/LSUB;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LSUB;

    .line 2559
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2562
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2565
    :cond_1
    return-void
.end method

.method public visitLUSHR(Lorg/checkerframework/org/apache/bcel/generic/LUSHR;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LUSHR;

    .line 2572
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2575
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2578
    :cond_1
    return-void
.end method

.method public visitLXOR(Lorg/checkerframework/org/apache/bcel/generic/LXOR;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LXOR;

    .line 2585
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2588
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v3, :cond_1

    .line 2589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2591
    :cond_1
    return-void
.end method

.method public visitLoadClass(Lorg/checkerframework/org/apache/bcel/generic/LoadClass;)V
    .locals 6
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LoadClass;

    .line 232
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-interface {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/LoadClass;->getLoadClassType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v0

    .line 233
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v1

    .line 235
    .local v1, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass2()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v2

    .line 236
    .local v2, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 237
    move-object v3, p1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-interface {p1, v5}, Lorg/checkerframework/org/apache/bcel/generic/LoadClass;->getLoadClassType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is referenced, but cannot be loaded and resolved: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 241
    .end local v1    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v2    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :cond_0
    return-void
.end method

.method public visitLoadInstruction(Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;

    .line 341
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->UNKNOWN:Lorg/checkerframework/org/apache/bcel/generic/Type;

    if-ne v0, v1, :cond_0

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read-Access on local variable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with unknown content."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 349
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->UNKNOWN:Lorg/checkerframework/org/apache/bcel/generic/Type;

    if-eq v0, v1, :cond_1

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading a two-locals value from local variables "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 352
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where the latter one is destroyed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 357
    :cond_1
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;

    const-string v1, "Local Variable type and LOADing Instruction type mismatch: Local Variable: \'"

    if-nez v0, :cond_2

    .line 358
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    if-eq v0, v2, :cond_3

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 360
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'; Instruction type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_2
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v0, :cond_3

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'; Instruction expects a ReferenceType."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 373
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->maxStack()I

    move-result v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not enough free stack slots to load a \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' onto the OperandStack."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 376
    :cond_4
    return-void
.end method

.method public visitLocalVariableInstruction(Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;

    .line 328
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->maxLocals()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->getIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->getIndex()I

    move-result v1

    add-int/2addr v1, v2

    :goto_0
    if-gt v0, v1, :cond_1

    .line 329
    const-string v0, "The \'index\' is not a valid index into the local variable array."

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 331
    :cond_1
    return-void
.end method

.method public visitMONITORENTER(Lorg/checkerframework/org/apache/bcel/generic/MONITORENTER;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/MONITORENTER;

    .line 2598
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v0, :cond_0

    .line 2599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The stack top should be of a ReferenceType, but is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2602
    :cond_0
    return-void
.end method

.method public visitMONITOREXIT(Lorg/checkerframework/org/apache/bcel/generic/MONITOREXIT;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/MONITOREXIT;

    .line 2609
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v0, :cond_0

    .line 2610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The stack top should be of a ReferenceType, but is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2613
    :cond_0
    return-void
.end method

.method public visitMULTIANEWARRAY(Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;

    .line 2620
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->getDimensions()S

    move-result v0

    .line 2622
    .local v0, "dimensions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2623
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v2, v3, :cond_0

    .line 2624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' upper stack types should be \'int\' but aren\'t."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2622
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2629
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public visitNEW(Lorg/checkerframework/org/apache/bcel/generic/NEW;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/NEW;

    .line 2639
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/NEW;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 2640
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v1, :cond_2

    .line 2643
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    const-string v2, "\'."

    const-string v3, "Expecting a class type (ObjectType) to work on. Found: \'"

    if-nez v1, :cond_0

    .line 2644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2646
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 2650
    .local v1, "obj":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    :try_start_0
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->referencesClassExact()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2651
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2655
    :cond_1
    goto :goto_0

    .line 2653
    :catch_0
    move-exception v2

    .line 2654
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. which threw "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2656
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void

    .line 2641
    .end local v1    # "obj":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    :cond_2
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v2, "NEW.getType() returning a non-reference type?!"

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public visitNEWARRAY(Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;

    .line 2663
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    .line 2664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2666
    :cond_0
    return-void
.end method

.method public visitNOP(Lorg/checkerframework/org/apache/bcel/generic/NOP;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/NOP;

    .line 2674
    return-void
.end method

.method public visitPOP(Lorg/checkerframework/org/apache/bcel/generic/POP;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/POP;

    .line 2681
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack top size should be 1 but stack top is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2683
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' of size \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2682
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2685
    :cond_0
    return-void
.end method

.method public visitPOP2(Lorg/checkerframework/org/apache/bcel/generic/POP2;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/POP2;

    .line 2692
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack top size should be 2 but stack top is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2694
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' of size \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2693
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2696
    :cond_0
    return-void
.end method

.method public visitPUTFIELD(Lorg/checkerframework/org/apache/bcel/generic/PUTFIELD;)V
    .locals 14
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/PUTFIELD;

    .line 2705
    :try_start_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 2706
    .local v0, "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "\'."

    if-nez v2, :cond_0

    :try_start_1
    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eq v0, v2, :cond_0

    .line 2707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack next-to-top should be an object reference that\'s not an array reference, but is \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2711
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/PUTFIELD;->getFieldName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v2

    .line 2713
    .local v2, "field_name":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->getObjectType(Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v4

    .line 2714
    .local v4, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v5

    .line 2715
    .local v5, "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    const/4 v6, 0x0

    .line 2716
    .local v6, "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    array-length v7, v5

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_2

    aget-object v10, v5, v9

    .line 2717
    .local v10, "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2718
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignature()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v11

    .line 2719
    .local v11, "f_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    iget-object v12, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v12}, Lorg/checkerframework/org/apache/bcel/generic/PUTFIELD;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v12

    .line 2723
    .local v12, "o_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v11, v12}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2724
    move-object v6, v10

    .line 2725
    goto :goto_1

    .line 2716
    .end local v10    # "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v11    # "f_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v12    # "o_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2729
    :cond_2
    :goto_1
    if-eqz v6, :cond_f

    .line 2733
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v7

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v7

    .line 2734
    .local v7, "value":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v9

    .line 2735
    .local v9, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    move-object v10, v9

    .line 2736
    .local v10, "shouldbe":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v11, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v10, v11, :cond_3

    sget-object v11, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v10, v11, :cond_3

    sget-object v11, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v10, v11, :cond_3

    sget-object v11, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne v10, v11, :cond_4

    .line 2740
    :cond_3
    sget-object v11, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    move-object v10, v11

    .line 2742
    :cond_4
    instance-of v11, v9, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v12, "The stack top type \'"

    if-eqz v11, :cond_7

    .line 2743
    const/4 v8, 0x0

    .line 2744
    .local v8, "rvalue":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    :try_start_2
    instance-of v11, v7, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v11, :cond_5

    .line 2745
    move-object v11, v7

    check-cast v11, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    move-object v8, v11

    .line 2746
    invoke-direct {p0, p1, v8}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)V

    goto :goto_2

    .line 2749
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "\' is not of a reference type as expected."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2754
    :goto_2
    invoke-virtual {v8, v10}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->isAssignmentCompatibleWith(Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 2755
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' is not assignment compatible with \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2757
    .end local v8    # "rvalue":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    :cond_6
    goto :goto_3

    .line 2760
    :cond_7
    if-eq v10, v7, :cond_8

    move v8, v1

    .line 2761
    .local v8, "bad":Z
    :cond_8
    if-eqz v8, :cond_9

    .line 2762
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' is not of type \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' as expected."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2766
    .end local v8    # "bad":Z
    :cond_9
    :goto_3
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->isProtected()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2767
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->getObjectType(Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v8

    .line 2768
    .local v8, "classtype":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    iget-object v11, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->mg:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v11

    .line 2770
    .local v11, "curr":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    invoke-virtual {v8, v11}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 2771
    invoke-virtual {v11, v8}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->subclassOf(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 2772
    :cond_a
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v12

    invoke-virtual {v12, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 2773
    .local v1, "tp":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v12, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v1, v12, :cond_b

    .line 2774
    return-void

    .line 2776
    :cond_b
    instance-of v12, v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-nez v12, :cond_c

    .line 2777
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The \'objectref\' must refer to an object that\'s not an array. Found instead: \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2779
    :cond_c
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 2780
    .local v3, "objreftype":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    invoke-virtual {v3, v11}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 2781
    invoke-virtual {v3, v11}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->subclassOf(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 2782
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The referenced field has the ACC_PROTECTED modifier, and it\'s a member of the current class or a superclass of the current class. However, the referenced object type \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2784
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v13

    invoke-virtual {v13}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' is not the current class or a subclass of the current class."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2782
    invoke-direct {p0, p1, v12}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2791
    .end local v1    # "tp":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v3    # "objreftype":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .end local v8    # "classtype":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .end local v11    # "curr":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    :cond_d
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Referenced field \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' is static which it shouldn\'t be."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2798
    .end local v0    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v2    # "field_name":Ljava/lang/String;
    .end local v4    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v5    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v6    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v7    # "value":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v9    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v10    # "shouldbe":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_e
    nop

    .line 2799
    return-void

    .line 2730
    .restart local v0    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .restart local v2    # "field_name":Ljava/lang/String;
    .restart local v4    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v5    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .restart local v6    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    :cond_f
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Field \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\' not found in "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    .end local p1    # "o":Lorg/checkerframework/org/apache/bcel/generic/PUTFIELD;
    throw v1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2795
    .end local v0    # "objectref":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v2    # "field_name":Ljava/lang/String;
    .end local v4    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v5    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v6    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .restart local p1    # "o":Lorg/checkerframework/org/apache/bcel/generic/PUTFIELD;
    :catch_0
    move-exception v0

    .line 2797
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visitPUTSTATIC(Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;)V
    .locals 11
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;

    .line 2807
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;->getFieldName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    .line 2808
    .local v0, "field_name":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->getObjectType(Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    .line 2809
    .local v1, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v2

    .line 2810
    .local v2, "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    const/4 v3, 0x0

    .line 2811
    .local v3, "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v2, v6

    .line 2812
    .local v7, "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2813
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v8

    .line 2814
    .local v8, "f_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    iget-object v9, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v9}, Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v9

    .line 2818
    .local v9, "o_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v8, v9}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2819
    move-object v3, v7

    .line 2820
    goto :goto_1

    .line 2811
    .end local v7    # "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v8    # "f_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v9    # "o_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2824
    :cond_1
    :goto_1
    if-eqz v3, :cond_9

    .line 2827
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    .line 2828
    .local v4, "value":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v6

    .line 2829
    .local v6, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    move-object v7, v6

    .line 2830
    .local v7, "shouldbe":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v7, v8, :cond_2

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v7, v8, :cond_2

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v7, v8, :cond_2

    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne v7, v8, :cond_3

    .line 2834
    :cond_2
    sget-object v8, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    move-object v7, v8

    .line 2836
    :cond_3
    instance-of v8, v6, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "The stack top type \'"

    if-eqz v8, :cond_6

    .line 2837
    const/4 v5, 0x0

    .line 2838
    .local v5, "rvalue":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    :try_start_1
    instance-of v8, v4, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v8, :cond_4

    .line 2839
    move-object v8, v4

    check-cast v8, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    move-object v5, v8

    .line 2840
    invoke-direct {p0, p1, v5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)V

    goto :goto_2

    .line 2843
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\' is not of a reference type as expected."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2848
    :goto_2
    invoke-virtual {v5, v7}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->isAssignmentCompatibleWith(Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2849
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is not assignment compatible with \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2851
    .end local v5    # "rvalue":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    :cond_5
    goto :goto_3

    .line 2854
    :cond_6
    if-eq v7, v4, :cond_7

    const/4 v5, 0x1

    .line 2855
    .local v5, "bad":Z
    :cond_7
    if-eqz v5, :cond_8

    .line 2856
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is not of type \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' as expected."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2865
    .end local v0    # "field_name":Ljava/lang/String;
    .end local v1    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v2    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v3    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v4    # "value":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v5    # "bad":Z
    .end local v6    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v7    # "shouldbe":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_8
    :goto_3
    nop

    .line 2866
    return-void

    .line 2825
    .restart local v0    # "field_name":Ljava/lang/String;
    .restart local v1    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v2    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .restart local v3    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    :cond_9
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not found in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    .end local p1    # "o":Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;
    throw v4
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2862
    .end local v0    # "field_name":Ljava/lang/String;
    .end local v1    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v2    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v3    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .restart local p1    # "o":Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;
    :catch_0
    move-exception v0

    .line 2864
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visitRET(Lorg/checkerframework/org/apache/bcel/generic/RET;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/RET;

    .line 2873
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/RET;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;

    if-nez v0, :cond_0

    .line 2874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expecting a ReturnaddressType in local variable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/RET;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2876
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->locals()Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/RET;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/LocalVariables;->get(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;->NO_TARGET:Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;

    if-eq v0, v1, :cond_1

    .line 2881
    return-void

    .line 2877
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "Oops: RET expecting a target!"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitRETURN(Lorg/checkerframework/org/apache/bcel/generic/RETURN;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/RETURN;

    .line 2888
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->mg:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2889
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;->getThis()Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->mg:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2890
    const-string v0, "Leaving a constructor that itself did not call a constructor."

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2893
    :cond_0
    return-void
.end method

.method public visitReturnInstruction(Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;

    .line 412
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->mg:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 413
    .local v0, "method_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne v0, v1, :cond_1

    .line 417
    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 420
    :cond_1
    instance-of v1, p1, Lorg/checkerframework/org/apache/bcel/generic/RETURN;

    if-eqz v1, :cond_3

    .line 421
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v1, :cond_2

    .line 422
    const-string v1, "RETURN instruction in non-void method."

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_2
    return-void

    .line 428
    :cond_3
    :goto_0
    instance-of v1, p1, Lorg/checkerframework/org/apache/bcel/generic/ARETURN;

    const-string v2, "\'."

    if-eqz v1, :cond_7

    .line 429
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne v0, v1, :cond_4

    .line 430
    const-string v1, "ARETURN instruction in void method."

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 432
    :cond_4
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v1, v3, :cond_5

    .line 433
    return-void

    .line 435
    :cond_5
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v1, :cond_6

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reference type expected on top of stack, but is: \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 438
    :cond_6
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)V

    goto :goto_1

    .line 448
    :cond_7
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current method has return type of \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->mg:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' expecting a \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' on top of the stack. But stack top is a \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 450
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 453
    :cond_8
    :goto_1
    return-void
.end method

.method public visitSALOAD(Lorg/checkerframework/org/apache/bcel/generic/SALOAD;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/SALOAD;

    .line 2900
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 2901
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v0, v2, :cond_0

    .line 2902
    return-void

    .line 2904
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    const-string v2, "\'."

    const-string v3, "Stack next-to-top must be of type short[] but is \'"

    if-nez v0, :cond_1

    .line 2905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2907
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 2908
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v4, :cond_2

    .line 2909
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2911
    :cond_2
    return-void
.end method

.method public visitSASTORE(Lorg/checkerframework/org/apache/bcel/generic/SASTORE;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/SASTORE;

    .line 2918
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    .line 2919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2921
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 2922
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-ne v0, v3, :cond_1

    .line 2923
    return-void

    .line 2925
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    const-string v3, "Stack next-to-next-to-top must be of type short[] but is \'"

    if-nez v0, :cond_2

    .line 2926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2928
    :cond_2
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 2929
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v0, v4, :cond_3

    .line 2930
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2932
    :cond_3
    return-void
.end method

.method public visitSIPUSH(Lorg/checkerframework/org/apache/bcel/generic/SIPUSH;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/SIPUSH;

    .line 2940
    return-void
.end method

.method public visitSWAP(Lorg/checkerframework/org/apache/bcel/generic/SWAP;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/SWAP;

    .line 2947
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    const-string v1, "\'."

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 2948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of size \'1\', but of size \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2950
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 2951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of size \'1\', but of size \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2952
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek(I)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2951
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 2954
    :cond_1
    return-void
.end method

.method public visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;

    .line 248
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->_visitStackAccessor(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    .line 249
    return-void
.end method

.method public visitStackInstruction(Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/StackInstruction;

    .line 319
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->_visitStackAccessor(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    .line 320
    return-void
.end method

.method public visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/StackProducer;

    .line 256
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->_visitStackAccessor(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    .line 257
    return-void
.end method

.method public visitStoreInstruction(Lorg/checkerframework/org/apache/bcel/generic/StoreInstruction;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/StoreInstruction;

    .line 385
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const-string v0, "Cannot STORE: Stack to read from is empty."

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 389
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;

    const-string v1, "Stack top type and STOREing Instruction type mismatch: Stack top: \'"

    if-nez v0, :cond_1

    .line 390
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/StoreInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'; Instruction type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 392
    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/StoreInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 397
    .local v0, "stacktop":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-nez v2, :cond_2

    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;

    if-nez v2, :cond_2

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; Instruction expects a ReferenceType or a ReturnadressType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 405
    .end local v0    # "stacktop":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_2
    :goto_0
    return-void
.end method

.method public visitTABLESWITCH(Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;

    .line 2961
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->stack()Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/OperandStack;->peek()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Type;)V

    .line 2963
    return-void
.end method
