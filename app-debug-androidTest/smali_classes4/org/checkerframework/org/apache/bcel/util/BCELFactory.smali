.class Lorg/checkerframework/org/apache/bcel/util/BCELFactory;
.super Lorg/checkerframework/org/apache/bcel/generic/EmptyVisitor;
.source "BCELFactory.java"


# static fields
.field private static final CONSTANT_PREFIX:Ljava/lang/String;


# instance fields
.field private final _cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

.field private final _mg:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

.field private final _out:Ljava/io/PrintWriter;

.field private final branch_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/org/apache/bcel/generic/Instruction;",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final branches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/checkerframework/org/apache/bcel/Const;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->CONSTANT_PREFIX:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "out"    # Ljava/io/PrintWriter;

    .line 74
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/EmptyVisitor;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->branch_map:Ljava/util/Map;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->branches:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_mg:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 76
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 77
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    .line 78
    return-void
.end method

.method private createConstant(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "embed":Ljava/lang/String;
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->convertString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 209
    :cond_0
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_1

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(char)0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_1
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_2
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_3
    instance-of v1, p1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v1, :cond_4

    .line 216
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 217
    .local v1, "ot":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new ObjectType(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .end local v1    # "ot":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    :cond_4
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "il.append(new PUSH(_cp, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "));"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method private updateBranchTargets()V
    .locals 13

    .line 320
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->branches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 321
    .local v1, "bi":Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->branch_map:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    .line 322
    .local v2, "bh":Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->getPosition()I

    move-result v3

    .line 323
    .local v3, "pos":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v5

    .line 325
    .local v5, "t_pos":I
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ".setTarget(ih_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ");"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    instance-of v6, v1, Lorg/checkerframework/org/apache/bcel/generic/Select;

    if-eqz v6, :cond_0

    .line 327
    move-object v6, v1

    check-cast v6, Lorg/checkerframework/org/apache/bcel/generic/Select;

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getTargets()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    .line 328
    .local v6, "ihs":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    array-length v10, v6

    if-ge v7, v10, :cond_0

    .line 329
    aget-object v10, v6, v7

    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v5

    .line 330
    iget-object v10, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".setTarget("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", ih_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 333
    .end local v1    # "bi":Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
    .end local v2    # "bh":Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;
    .end local v3    # "pos":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "t_pos":I
    .end local v6    # "ihs":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v7    # "j":I
    :cond_0
    goto/16 :goto_0

    .line 334
    :cond_1
    return-void
.end method

.method private updateExceptionHandlers()V
    .locals 9

    .line 338
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_mg:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getExceptionHandlers()[Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    move-result-object v0

    .line 339
    .local v0, "handlers":[Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 340
    .local v3, "h":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getCatchType()Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "null"

    goto :goto_1

    .line 341
    :cond_0
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getCatchType()Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v4

    .line 340
    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printType(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "type":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    method.addExceptionHandler(ih_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getStartPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v7

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ih_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 343
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getEndPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v8

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 344
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getHandlerPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v7

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ");"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 342
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    .end local v3    # "h":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    .end local v4    # "type":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    :cond_1
    return-void
.end method

.method private visitInstruction(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Z
    .locals 5
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    .line 111
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v0

    .line 112
    .local v0, "opcode":S
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->getInstruction(I)Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/checkerframework/org/apache/bcel/generic/ConstantPushInstruction;

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "il.append(InstructionConst."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x1

    return v1

    .line 118
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public start()V
    .locals 5

    .line 84
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_mg:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_mg:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isNative()Z

    move-result v0

    if-nez v0, :cond_5

    .line 85
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_mg:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    .local v0, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v0, :cond_4

    .line 87
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v1

    .line 88
    .local v1, "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->branch_map:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->hasTargeters()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    const-string v3, "    InstructionHandle ih_"

    if-eqz v2, :cond_1

    .line 93
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    :goto_1
    invoke-direct {p0, v1}, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->visitInstruction(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    invoke-virtual {v1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V

    .line 85
    .end local v1    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    :cond_3
    nop

    .line 86
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    goto :goto_0

    .line 104
    .end local v0    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_4
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->updateBranchTargets()V

    .line 105
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->updateExceptionHandlers()V

    .line 107
    :cond_5
    return-void
.end method

.method public visitAllocationInstruction(Lorg/checkerframework/org/apache/bcel/generic/AllocationInstruction;)V
    .locals 6
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/AllocationInstruction;

    .line 176
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;

    if-eqz v0, :cond_0

    .line 177
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .local v0, "type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    goto :goto_0

    .line 179
    .end local v0    # "type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;->getType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 181
    .restart local v0    # "type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :goto_0
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v1

    .line 182
    .local v1, "opcode":S
    const/4 v2, 0x1

    .line 183
    .local v2, "dim":I
    sparse-switch v1, :sswitch_data_0

    .line 200
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Oops: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 189
    :sswitch_0
    move-object v3, p1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->getDimensions()S

    move-result v2

    .line 193
    :sswitch_1
    instance-of v3, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v3, :cond_1

    .line 194
    move-object v3, v0

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 196
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "il.append(_factory.createNewArray("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printType(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", (short) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "));"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    goto :goto_1

    .line 185
    :sswitch_2
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "il.append(_factory.createNew(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"));"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    nop

    .line 202
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xbb -> :sswitch_2
        0xbc -> :sswitch_1
        0xbd -> :sswitch_1
        0xc5 -> :sswitch_0
    .end sparse-switch
.end method

.method public visitArrayInstruction(Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;)V
    .locals 6
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;

    .line 139
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;->getOpcode()S

    move-result v0

    .line 140
    .local v0, "opcode":S
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/ArrayInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 141
    .local v1, "type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    const/16 v2, 0x4f

    if-ge v0, v2, :cond_0

    const-string v2, "Load"

    goto :goto_0

    :cond_0
    const-string v2, "Store"

    .line 142
    .local v2, "kind":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "il.append(_factory.createArray"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printType(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "));"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public visitBranchInstruction(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)V
    .locals 12
    .param p1, "bi"    # Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    .line 268
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->branch_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;

    .line 269
    .local v0, "bh":Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->getPosition()I

    move-result v1

    .line 270
    .local v1, "pos":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "name":Ljava/lang/String;
    instance-of v3, p1, Lorg/checkerframework/org/apache/bcel/generic/Select;

    const-string v4, ");"

    const-string v5, ", "

    if-eqz v3, :cond_4

    .line 272
    move-object v3, p1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/Select;

    .line 273
    .local v3, "s":Lorg/checkerframework/org/apache/bcel/generic/Select;
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->branches:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "new int[] { "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .local v6, "args":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getMatchs()[I

    move-result-object v7

    .line 276
    .local v7, "matchs":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v7

    if-ge v8, v9, :cond_1

    .line 277
    aget v9, v7, v8

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_0

    .line 279
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 282
    .end local v8    # "i":I
    :cond_1
    const-string v8, " }"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v8, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Select "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = new "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new InstructionHandle[] { "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_3

    .line 286
    iget-object v9, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    const-string v10, "null"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_2

    .line 288
    iget-object v9, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 291
    .end local v8    # "i":I
    :cond_3
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    const-string v8, " }, null);"

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    .end local v3    # "s":Lorg/checkerframework/org/apache/bcel/generic/Select;
    .end local v6    # "args":Ljava/lang/StringBuilder;
    .end local v7    # "matchs":[I
    goto :goto_3

    .line 293
    :cond_4
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v3

    .line 295
    .local v3, "t_pos":I
    if-le v1, v3, :cond_5

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ih_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "target":Ljava/lang/String;
    goto :goto_2

    .line 298
    .end local v6    # "target":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->branches:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    const-string v6, "null"

    .line 301
    .restart local v6    # "target":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    BranchInstruction "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = _factory.createBranchInstruction("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->CONSTANT_PREFIX:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 302
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 301
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    .end local v3    # "t_pos":I
    .end local v6    # "target":Ljava/lang/String;
    :goto_3
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/BranchHandle;->hasTargeters()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 306
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    ih_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = il.append("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 308
    :cond_6
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    il.append("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    :goto_4
    return-void
.end method

.method public visitCHECKCAST(Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;)V
    .locals 4
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;

    .line 251
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 252
    .local v0, "type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "il.append(_factory.createCheckCast("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printType(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "));"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public visitConstantPushInstruction(Lorg/checkerframework/org/apache/bcel/generic/ConstantPushInstruction;)V
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPushInstruction;

    .line 238
    invoke-interface {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPushInstruction;->getValue()Ljava/lang/Number;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->createConstant(Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public visitFieldInstruction(Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;)V
    .locals 8
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;

    .line 149
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getOpcode()S

    move-result v0

    .line 150
    .local v0, "opcode":S
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getClassName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "class_name":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getFieldName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "field_name":Ljava/lang/String;
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v3}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getFieldType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    .line 153
    .local v3, "type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "il.append(_factory.createFieldAccess(\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 154
    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printType(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->CONSTANT_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 155
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Const;->getOpcodeName(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "));"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public visitINSTANCEOF(Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;)V
    .locals 4
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;

    .line 244
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 245
    .local v0, "type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "il.append(new INSTANCEOF(_cp.addClass("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printType(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")));"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public visitInvokeInstruction(Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;)V
    .locals 9
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;

    .line 161
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getOpcode()S

    move-result v0

    .line 162
    .local v0, "opcode":S
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getClassName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "class_name":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getMethodName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "method_name":Ljava/lang/String;
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v3}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    .line 165
    .local v3, "type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    .line 166
    .local v4, "arg_types":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "il.append(_factory.createInvoke(\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 167
    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printType(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 168
    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printArgumentTypes([Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->CONSTANT_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 169
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Const;->getOpcodeName(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "));"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 166
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public visitLDC(Lorg/checkerframework/org/apache/bcel/generic/LDC;)V
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/LDC;

    .line 226
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/LDC;->getValue(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->createConstant(Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public visitLDC2_W(Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;)V
    .locals 1
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;

    .line 232
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;->getValue(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/Number;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->createConstant(Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method public visitLocalVariableInstruction(Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;)V
    .locals 8
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;

    .line 124
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->getOpcode()S

    move-result v0

    .line 125
    .local v0, "opcode":S
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 126
    .local v1, "type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    const/16 v2, 0x84

    const-string v3, "));"

    const-string v4, ", "

    if-ne v0, v2, :cond_0

    .line 127
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "il.append(new IINC("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->getIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Lorg/checkerframework/org/apache/bcel/generic/IINC;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/IINC;->getIncrement()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_0
    const/16 v2, 0x36

    if-ge v0, v2, :cond_1

    const-string v2, "Load"

    goto :goto_0

    :cond_1
    const-string v2, "Store"

    .line 131
    .local v2, "kind":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "il.append(_factory.create"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printType(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 132
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->getIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .end local v2    # "kind":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method public visitRET(Lorg/checkerframework/org/apache/bcel/generic/RET;)V
    .locals 3
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/RET;

    .line 315
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "il.append(new RET("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/RET;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")));"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public visitReturnInstruction(Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;)V
    .locals 4
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;

    .line 258
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 259
    .local v0, "type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "il.append(_factory.createReturn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/util/BCELifier;->printType(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "));"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    return-void
.end method
