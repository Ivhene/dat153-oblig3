.class public final Lorg/checkerframework/org/plumelib/bcelutil/BcelUtil;
.super Ljava/lang/Object;
.source "BcelUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static skipChecks:Z

.field private static final stringArray:Lorg/checkerframework/org/apache/bcel/generic/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    nop

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lorg/checkerframework/org/plumelib/bcelutil/BcelUtil;->skipChecks:Z

    .line 46
    const-string v0, "[Ljava.lang.String;"

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/plumelib/bcelutil/BcelUtil;->stringArray:Lorg/checkerframework/org/apache/bcel/generic/Type;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Error;

    const-string v1, "do not instantiate"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static accessFlagsToString(Lorg/checkerframework/org/apache/bcel/classfile/Method;)Ljava/lang/String;
    .locals 6
    .param p0, "m"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 91
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getAccessFlags()I

    move-result v0

    .line 93
    .local v0, "flags":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x1

    .local v3, "pow":I
    :goto_0
    const/16 v4, 0x4000

    if-gt v2, v4, :cond_3

    .line 96
    and-int v4, v0, v3

    if-eqz v4, :cond_2

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 98
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    sget v4, Lorg/checkerframework/org/apache/bcel/Const;->ACCESS_NAMES_LENGTH:I

    if-ge v2, v4, :cond_1

    .line 101
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/Const;->getAccessName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 103
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "ACC_BIT(%x)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_2
    :goto_1
    shl-int/lit8 v3, v3, 0x1

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "i":I
    .end local v3    # "pow":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static addToStart(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V
    .locals 8
    .param p0, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p1, "newList"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 508
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v0

    .line 509
    .local v0, "il":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    .line 510
    .local v1, "oldStart":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->insert(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    .line 515
    .local v2, "newStart":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->hasTargeters()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 517
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getTargeters()[Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 518
    .local v6, "it":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    instance-of v7, v6, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;

    if-nez v7, :cond_0

    instance-of v7, v6, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    if-eqz v7, :cond_1

    .line 519
    :cond_0
    invoke-interface {v6, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;->updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 517
    .end local v6    # "it":Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 523
    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setMaxStack()V

    .line 524
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setMaxLocals()V

    .line 525
    return-void
.end method

.method public static attributeNameToString(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 157
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    .line 158
    .local v0, "pool":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getNameIndex()I

    move-result v1

    .line 159
    .local v1, "conIndex":I
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    .line 160
    .local v2, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "attName":Ljava/lang/String;
    return-object v3
.end method

.method public static attributeNameToString(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;
    .locals 3
    .param p0, "a"    # Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .param p1, "pool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 173
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getNameIndex()I

    move-result v0

    .line 174
    .local v0, "conIndex":I
    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    .line 175
    .local v1, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "attName":Ljava/lang/String;
    return-object v2
.end method

.method public static checkMgen(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    .locals 6
    .param p0, "mgen"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 318
    sget-boolean v0, Lorg/checkerframework/org/plumelib/bcelutil/BcelUtil;->skipChecks:Z

    if-eqz v0, :cond_0

    .line 319
    return-void

    .line 323
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->toString()Ljava/lang/String;

    .line 324
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLineNumberTable(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    .line 326
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v0

    .line 327
    .local v0, "ilist":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 330
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getExceptionHandlers()[Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    move-result-object v1

    .line 331
    .local v1, "exceptionHandlers":[Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 332
    .local v4, "gen":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getStartPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->contains(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 331
    .end local v4    # "gen":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    .restart local v4    # "gen":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception handler "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " has been forgotten in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 336
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 338
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p0    # "mgen":Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    throw v2

    .line 340
    .end local v4    # "gen":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    .restart local p0    # "mgen":Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    :cond_3
    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getMethod()Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v3

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/Method;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 341
    .local v2, "nmg":Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLineNumberTable(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    nop

    .line 351
    .end local v0    # "ilist":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    .end local v1    # "exceptionHandlers":[Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    .end local v2    # "nmg":Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    return-void

    .line 328
    .restart local v0    # "ilist":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    :cond_4
    :goto_1
    return-void

    .line 342
    .end local v0    # "ilist":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    :catchall_0
    move-exception v0

    .line 343
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/Error;

    .line 346
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 345
    const-string v3, "failure while checking method %s.%s%n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    .line 349
    throw v1
.end method

.method public static checkMgens(Lorg/checkerframework/org/apache/bcel/generic/ClassGen;)V
    .locals 6
    .param p0, "gen"    # Lorg/checkerframework/org/apache/bcel/generic/ClassGen;

    .line 360
    sget-boolean v0, Lorg/checkerframework/org/plumelib/bcelutil/BcelUtil;->skipChecks:Z

    if-eqz v0, :cond_0

    .line 361
    return-void

    .line 364
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v0

    .line 365
    .local v0, "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 366
    aget-object v2, v0, v1

    .line 369
    .local v2, "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    new-instance v3, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/Method;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    invoke-static {v3}, Lorg/checkerframework/org/plumelib/bcelutil/BcelUtil;->checkMgen(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V

    .line 365
    .end local v2    # "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static classnameToType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p0, "classname"    # Ljava/lang/String;

    .line 689
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 691
    const-string v0, "int"

    if-ne p0, v0, :cond_0

    .line 692
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 693
    :cond_0
    const-string v0, "boolean"

    if-ne p0, v0, :cond_1

    .line 694
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 695
    :cond_1
    const-string v0, "byte"

    if-ne p0, v0, :cond_2

    .line 696
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 697
    :cond_2
    const-string v0, "char"

    if-ne p0, v0, :cond_3

    .line 698
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 699
    :cond_3
    const-string v0, "double"

    if-ne p0, v0, :cond_4

    .line 700
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 701
    :cond_4
    const-string v0, "float"

    if-ne p0, v0, :cond_5

    .line 702
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 703
    :cond_5
    const-string v0, "long"

    if-ne p0, v0, :cond_6

    .line 704
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 705
    :cond_6
    const-string v0, "short"

    if-ne p0, v0, :cond_7

    .line 706
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 708
    :cond_7
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static dump(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Ljava/io/File;)V
    .locals 16
    .param p0, "jc"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .param p1, "dumpDir"    # Ljava/io/File;

    .line 442
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->mkdir()Z

    .line 443
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bcel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v2, p1

    :try_start_1
    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 444
    .local v0, "path":Ljava/io/File;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V

    .line 447
    .local v1, "p":Ljava/io/PrintStream;
    const-string v3, "class %s extends %s%n"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 448
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getInterfaceNames()[Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "inames":[Ljava/lang/String;
    const/4 v5, 0x1

    .line 450
    .local v5, "first":Z
    if-eqz v3, :cond_2

    array-length v6, v3

    if-lez v6, :cond_2

    .line 451
    const-string v6, "   implements "

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 452
    array-length v6, v3

    move v9, v7

    :goto_0
    if-ge v9, v6, :cond_1

    aget-object v10, v3, v9

    .line 453
    .local v10, "iname":Ljava/lang/String;
    if-nez v5, :cond_0

    const-string v11, ", "

    new-array v12, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 454
    :cond_0
    const-string v11, "%s"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 455
    const/4 v5, 0x0

    .line 452
    .end local v10    # "iname":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 457
    :cond_1
    const-string v6, "%n"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 461
    :cond_2
    const-string v6, "%nFields%n"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 462
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v6

    array-length v9, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v10, v7

    :goto_1
    const-string v11, "  %s%n"

    if-ge v10, v9, :cond_3

    :try_start_2
    aget-object v12, v6, v10

    .line 463
    .local v12, "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v11, v13}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 462
    nop

    .end local v12    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 467
    :cond_3
    const-string v6, "%nMethods%n"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 468
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v6

    array-length v9, v6

    move v10, v7

    :goto_2
    if-ge v10, v9, :cond_4

    aget-object v12, v6, v10

    .line 469
    .local v12, "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v11, v13}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 468
    nop

    .end local v12    # "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 472
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v6

    array-length v9, v6

    move v10, v7

    :goto_3
    if-ge v10, v9, :cond_6

    aget-object v12, v6, v10

    .line 473
    .restart local v12    # "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getCode()Lorg/checkerframework/org/apache/bcel/classfile/Code;

    move-result-object v13

    .line 474
    .local v13, "code":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    if-eqz v13, :cond_5

    .line 475
    const-string v14, "%nMethod %s%n"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 476
    new-array v14, v8, [Ljava/lang/Object;

    invoke-virtual {v13}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v8, "\n"

    const-string v4, "\n  "

    invoke-virtual {v15, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v7

    invoke-virtual {v1, v11, v14}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 472
    .end local v12    # "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local v13    # "code":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x2

    const/4 v8, 0x1

    goto :goto_3

    .line 481
    :cond_6
    const-string v4, "Constant Pool:%n"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 482
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v4

    .line 483
    .local v4, "cp":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantPool()[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v6

    .line 484
    .local v6, "constants":[Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    const/4 v8, 0x0

    .local v8, "ii":I
    :goto_4
    array-length v9, v6

    if-ge v8, v9, :cond_7

    .line 485
    const-string v9, "  %d %s%n"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    aget-object v12, v6, v8

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-virtual {v1, v9, v11}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 484
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 488
    .end local v8    # "ii":I
    :cond_7
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 494
    .end local v0    # "path":Ljava/io/File;
    .end local v1    # "p":Ljava/io/PrintStream;
    .end local v3    # "inames":[Ljava/lang/String;
    .end local v4    # "cp":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .end local v5    # "first":Z
    .end local v6    # "constants":[Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    nop

    .line 495
    return-void

    .line 490
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    .line 491
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    new-instance v1, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error dumping JavaClass: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 492
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static dump(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Ljava/lang/String;)V
    .locals 1
    .param p0, "jc"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .param p1, "dumpDir"    # Ljava/lang/String;

    .line 428
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/checkerframework/org/plumelib/bcelutil/BcelUtil;->dump(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Ljava/io/File;)V

    .line 429
    return-void
.end method

.method static dumpMethods(Lorg/checkerframework/org/apache/bcel/generic/ClassGen;)V
    .locals 7
    .param p0, "gen"    # Lorg/checkerframework/org/apache/bcel/generic/ClassGen;

    .line 411
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->getClassName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Class %s methods:%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 412
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 413
    .local v3, "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "  %s%n"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 412
    .end local v3    # "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    :cond_0
    return-void
.end method

.method public static dumpStackTrace()V
    .locals 7

    .line 384
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 387
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 388
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "No stack trace information available"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 390
    :cond_0
    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 391
    .local v1, "caller":Ljava/lang/StackTraceElement;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 393
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 395
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 396
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 391
    const-string v4, "%s.%s (%s line %d)"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 397
    const/4 v2, 0x3

    .local v2, "ii":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 398
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, " [%s line %d]"

    invoke-virtual {v3, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    .end local v2    # "ii":I
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "%n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 402
    .end local v1    # "caller":Ljava/lang/StackTraceElement;
    :goto_1
    return-void
.end method

.method public static getConstantString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;I)Ljava/lang/String;
    .locals 4
    .param p0, "pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .param p1, "index"    # I

    .line 536
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 537
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    if-eqz v0, :cond_2

    .line 538
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    if-eqz v1, :cond_0

    .line 539
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 540
    :cond_0
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    if-eqz v1, :cond_1

    .line 541
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 542
    .local v1, "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getBytes(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 544
    .end local v1    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    :cond_1
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 537
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into pool"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static inJdk(Ljava/lang/String;)Z
    .locals 1
    .param p0, "classname"    # Ljava/lang/String;

    .line 245
    const-string v0, "java."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    const-string v0, "com.oracle."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    const-string v0, "com.sun."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    const-string v0, "javax."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    const-string v0, "jdk."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    const-string v0, "org.ietf."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    const-string v0, "org.jcp."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    const-string v0, "org.omg."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    const-string v0, "org.w3c."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    const-string v0, "org.xml."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    const-string v0, "sun."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    const-string v0, "sunw."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 245
    :goto_1
    return v0
.end method

.method public static inJdk(Lorg/checkerframework/org/apache/bcel/generic/ClassGen;)Z
    .locals 1
    .param p0, "gen"    # Lorg/checkerframework/org/apache/bcel/generic/ClassGen;

    .line 234
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/plumelib/bcelutil/BcelUtil;->inJdk(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static inJdkInternalform(Ljava/lang/String;)Z
    .locals 1
    .param p0, "classname"    # Ljava/lang/String;

    .line 266
    const-string v0, "java/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    const-string v0, "com/oracle/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    const-string v0, "com/sun/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    const-string v0, "javax/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    const-string v0, "jdk/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    const-string v0, "org/ietj/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    const-string v0, "org/jcp/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    const-string v0, "org/omg/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    const-string v0, "org/w3c/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    const-string v0, "org/xml/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    const-string v0, "sun/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    const-string v0, "sunw/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 266
    :goto_1
    return v0
.end method

.method public static instructionListToString(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;
    .locals 6
    .param p0, "il"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    .param p1, "pool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 124
    .local v2, "handle":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v4

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .end local v2    # "handle":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    goto :goto_0

    .line 126
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isClinit(Lorg/checkerframework/org/apache/bcel/classfile/Method;)Z
    .locals 2
    .param p0, "m"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 224
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<clinit>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isClinit(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)Z
    .locals 2
    .param p0, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 214
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<clinit>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isConstructor(Lorg/checkerframework/org/apache/bcel/classfile/Method;)Z
    .locals 2
    .param p0, "m"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 201
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "method name cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isConstructor(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)Z
    .locals 2
    .param p0, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 188
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "method name cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isLocalVariableTypeTable(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Z
    .locals 2
    .param p0, "a"    # Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .param p1, "pool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 288
    invoke-static {p0, p1}, Lorg/checkerframework/org/plumelib/bcelutil/BcelUtil;->attributeNameToString(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalVariableTypeTable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMain(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)Z
    .locals 5
    .param p0, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 299
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getArgumentTypes()[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 300
    .local v0, "argTypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isStatic()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getReturnType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne v1, v3, :cond_0

    .line 302
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "main"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    aget-object v1, v0, v2

    sget-object v4, Lorg/checkerframework/org/plumelib/bcelutil/BcelUtil;->stringArray:Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 304
    invoke-virtual {v1, v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    nop

    .line 300
    :goto_0
    return v2
.end method

.method public static localVariablesToString(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)Ljava/lang/String;
    .locals 7
    .param p0, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getMaxLocals()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Locals for %s [cnt %d]%n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLocalVariables()[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    move-result-object v1

    .line 140
    .local v1, "lvgs":[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 141
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 142
    .local v4, "lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "  %s [index %d]%n"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .end local v4    # "lvg":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static makeMethodBodyEmpty(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    .locals 2
    .param p0, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 596
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/RETURN;

    invoke-direct {v1}, Lorg/checkerframework/org/apache/bcel/generic/RETURN;-><init>()V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setInstructionList(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V

    .line 597
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeExceptionHandlers()V

    .line 598
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeLineNumbers()V

    .line 599
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeLocalVariables()V

    .line 600
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setMaxLocals()V

    .line 601
    return-void
.end method

.method public static methodDeclarationToString(Lorg/checkerframework/org/apache/bcel/classfile/Method;)Ljava/lang/String;
    .locals 9
    .param p0, "m"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/bcelutil/BcelUtil;->accessFlagsToString(Lorg/checkerframework/org/apache/bcel/classfile/Method;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "flags":Ljava/lang/String;
    const/4 v2, 0x0

    .line 67
    .local v2, "argsExist":Z
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    const-string v3, "%s "

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getReturnType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s %s("

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getArgumentTypes()[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 72
    .local v6, "at":Lorg/checkerframework/org/apache/bcel/generic/Type;
    const-string v7, "%s, "

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const/4 v2, 0x1

    .line 71
    .end local v6    # "at":Lorg/checkerframework/org/apache/bcel/generic/Type;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 75
    :cond_1
    if-eqz v2, :cond_2

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 78
    :cond_2
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static postpendToArray([Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/Type;)[Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 3
    .param p0, "types"    # [Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p1, "newType"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 655
    array-length v0, p0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 658
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 659
    .local v0, "newTypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    array-length v1, p0

    aput-object p1, v0, v1

    .line 661
    return-object v0

    .line 656
    .end local v0    # "newTypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "array "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is too large to extend"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prependToArray(Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)[Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 4
    .param p0, "newType"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p1, "types"    # [Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 672
    array-length v0, p1

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 675
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 676
    .local v0, "newTypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    aput-object p0, v0, v3

    .line 678
    return-object v0

    .line 673
    .end local v0    # "newTypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "array "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is too large to extend"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeLocalVariableTypeTables(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    .locals 5
    .param p0, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 612
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getCodeAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 613
    .local v3, "a":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/org/plumelib/bcelutil/BcelUtil;->isLocalVariableTypeTable(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 614
    invoke-virtual {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeCodeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 612
    .end local v3    # "a":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 617
    :cond_1
    return-void
.end method

.method public static resetLocalsToFormals(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    .locals 6
    .param p0, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 560
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getArgumentTypes()[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 565
    .local v0, "argTypes":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getArgumentNames()[Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "argNames":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setMaxLocals(I)V

    .line 569
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->removeLocalVariables()V

    .line 572
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->isStatic()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 573
    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;-><init>(Ljava/lang/String;)V

    const-string v4, "this"

    invoke-virtual {p0, v4, v2, v3, v3}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    .line 577
    :cond_0
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 578
    aget-object v4, v1, v2

    aget-object v5, v0, v2

    invoke-virtual {p0, v4, v5, v3, v3}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 583
    .end local v2    # "ii":I
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setMaxLocals()V

    .line 585
    return-void
.end method

.method public static typeToClass(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/Class;
    .locals 5
    .param p0, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/bcel/generic/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 639
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/bcelutil/BcelUtil;->typeToClassgetname(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "classname":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 642
    :catch_0
    move-exception v1

    .line 643
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find class for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static typeToClassgetname(Lorg/checkerframework/org/apache/bcel/generic/Type;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 627
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "signature":Ljava/lang/String;
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->fieldDescriptorToClassGetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
