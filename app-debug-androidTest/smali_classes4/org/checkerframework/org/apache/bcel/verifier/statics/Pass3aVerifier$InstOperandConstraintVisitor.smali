.class Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;
.super Lorg/checkerframework/org/apache/bcel/generic/EmptyVisitor;
.source "Pass3aVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstOperandConstraintVisitor"
.end annotation


# instance fields
.field private final cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

.field final synthetic this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 0
    .param p2, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 480
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/EmptyVisitor;-><init>()V

    .line 481
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 482
    return-void
.end method

.method private constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V
    .locals 3
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .param p2, "message"    # Ljava/lang/String;

    .line 501
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionOperandConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instruction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " constraint violated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionOperandConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getMethod(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;)Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .locals 6
    .param p1, "jc"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .param p2, "invoke"    # Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;

    .line 1200
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v0

    .line 1201
    .local v0, "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1202
    .local v3, "element":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p2, v5}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getMethodName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1203
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p2, v5}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1204
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p2, v5}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->objarrayequals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1205
    return-object v3

    .line 1201
    .end local v3    # "element":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1209
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getMethodRecursive(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;)Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .locals 6
    .param p1, "jc"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .param p2, "invoke"    # Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1169
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->getMethod(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;)Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v0

    .line 1170
    .local v0, "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    if-eqz v0, :cond_0

    .line 1172
    return-object v0

    .line 1175
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperClasses()[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 1176
    .local v5, "superclass":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-direct {p0, v5, p2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->getMethod(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;)Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v0

    .line 1177
    if-eqz v0, :cond_1

    .line 1179
    return-object v0

    .line 1175
    .end local v5    # "superclass":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1183
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getInterfaces()[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 1184
    .local v4, "superclass":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-direct {p0, v4, p2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->getMethod(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;)Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v0

    .line 1185
    if-eqz v0, :cond_3

    .line 1187
    return-object v0

    .line 1183
    .end local v4    # "superclass":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1191
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private getObjectType(Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;

    .line 579
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getReferenceType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    move-result-object v0

    .line 580
    .local v0, "rt":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v1, :cond_0

    .line 581
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-object v1

    .line 583
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

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 584
    const/4 v1, 0x0

    return-object v1
.end method

.method private indexValid(Lorg/checkerframework/org/apache/bcel/generic/Instruction;I)V
    .locals 2
    .param p1, "i"    # Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .param p2, "idx"    # I

    .line 509
    if-ltz p2, :cond_0

    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getSize()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal constant pool index \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 512
    :cond_1
    return-void
.end method

.method private max_locals()I
    .locals 4

    .line 490
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->access$000(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->access$100(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getCode()Lorg/checkerframework/org/apache/bcel/classfile/Code;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getMaxLocals()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 491
    :catch_0
    move-exception v0

    .line 493
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

.method private objarrayequals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # [Ljava/lang/Object;
    .param p2, "p"    # [Ljava/lang/Object;

    .line 1330
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1331
    return v2

    .line 1334
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1335
    aget-object v1, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1336
    return v2

    .line 1334
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1340
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public visitALOAD(Lorg/checkerframework/org/apache/bcel/generic/ALOAD;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ALOAD;

    .line 874
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;->getIndex()I

    move-result v0

    .line 875
    .local v0, "idx":I
    const-string v1, "Index \'"

    if-gez v0, :cond_0

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-negative."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 879
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 880
    .local v2, "maxminus1":I
    if-le v0, v2, :cond_1

    .line 881
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 884
    .end local v2    # "maxminus1":I
    :cond_1
    :goto_0
    return-void
.end method

.method public visitANEWARRAY(Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;

    .line 809
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lorg/checkerframework/org/apache/bcel/generic/Instruction;I)V

    .line 810
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 811
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    if-nez v1, :cond_0

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting a CONSTANT_Class operand, but found a \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 814
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 815
    .local v1, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v2, :cond_1

    .line 816
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getDimensions()I

    move-result v2

    .line 817
    .local v2, "dimensions":I
    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    .line 818
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to create an array with more than 255 dimensions; actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 823
    .end local v2    # "dimensions":I
    :cond_1
    return-void
.end method

.method public visitASTORE(Lorg/checkerframework/org/apache/bcel/generic/ASTORE;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ASTORE;

    .line 919
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;->getIndex()I

    move-result v0

    .line 920
    .local v0, "idx":I
    const-string v1, "Index \'"

    if-gez v0, :cond_0

    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-negative."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 925
    .local v2, "maxminus1":I
    if-le v0, v2, :cond_1

    .line 926
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 929
    .end local v2    # "maxminus1":I
    :cond_1
    :goto_0
    return-void
.end method

.method public visitCHECKCAST(Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;

    .line 754
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lorg/checkerframework/org/apache/bcel/generic/Instruction;I)V

    .line 755
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 756
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    if-nez v1, :cond_0

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting a CONSTANT_Class operand, but found a \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 759
    :cond_0
    return-void
.end method

.method public visitDLOAD(Lorg/checkerframework/org/apache/bcel/generic/DLOAD;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DLOAD;

    .line 980
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/DLOAD;->getIndex()I

    move-result v0

    .line 981
    .local v0, "idx":I
    const-string v1, "Index \'"

    if-gez v0, :cond_0

    .line 982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-negative. [Constraint by JustIce as an analogon to the single-slot xLOAD/xSTORE instructions; may not happen anyway.]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 986
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .line 987
    .local v2, "maxminus2":I
    if-le v0, v2, :cond_1

    .line 988
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' must not be greater than max_locals-2 \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 991
    .end local v2    # "maxminus2":I
    :cond_1
    :goto_0
    return-void
.end method

.method public visitDSTORE(Lorg/checkerframework/org/apache/bcel/generic/DSTORE;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/DSTORE;

    .line 1012
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/DSTORE;->getIndex()I

    move-result v0

    .line 1013
    .local v0, "idx":I
    const-string v1, "Index \'"

    if-gez v0, :cond_0

    .line 1014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-negative. [Constraint by JustIce as an analogon to the single-slot xLOAD/xSTORE instructions; may not happen anyway.]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 1018
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .line 1019
    .local v2, "maxminus2":I
    if-le v0, v2, :cond_1

    .line 1020
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' must not be greater than max_locals-2 \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1023
    .end local v2    # "maxminus2":I
    :cond_1
    :goto_0
    return-void
.end method

.method public visitFLOAD(Lorg/checkerframework/org/apache/bcel/generic/FLOAD;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FLOAD;

    .line 859
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/FLOAD;->getIndex()I

    move-result v0

    .line 860
    .local v0, "idx":I
    const-string v1, "Index \'"

    if-gez v0, :cond_0

    .line 861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-negative."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 864
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 865
    .local v2, "maxminus1":I
    if-le v0, v2, :cond_1

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 869
    .end local v2    # "maxminus1":I
    :cond_1
    :goto_0
    return-void
.end method

.method public visitFSTORE(Lorg/checkerframework/org/apache/bcel/generic/FSTORE;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FSTORE;

    .line 904
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/FSTORE;->getIndex()I

    move-result v0

    .line 905
    .local v0, "idx":I
    const-string v1, "Index \'"

    if-gez v0, :cond_0

    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-negative."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 909
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 910
    .local v2, "maxminus1":I
    if-le v0, v2, :cond_1

    .line 911
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 914
    .end local v2    # "maxminus1":I
    :cond_1
    :goto_0
    return-void
.end method

.method public visitFieldInstruction(Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;)V
    .locals 18
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;

    .line 592
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getIndex()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lorg/checkerframework/org/apache/bcel/generic/Instruction;I)V

    .line 593
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 594
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "\'."

    if-nez v3, :cond_0

    .line 595
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Indexing a constant that\'s not a CONSTANT_Fieldref but a \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 598
    :cond_0
    iget-object v3, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getFieldName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, "field_name":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->getObjectType(Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v5

    .line 601
    .local v5, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v6

    .line 602
    .local v6, "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    const/4 v7, 0x0

    .line 603
    .local v7, "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    array-length v8, v6

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_2

    aget-object v11, v6, v10

    .line 604
    .local v11, "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 605
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignature()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v12

    .line 606
    .local v12, "f_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    iget-object v13, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2, v13}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v13

    .line 610
    .local v13, "o_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v12, v13}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 611
    move-object v7, v11

    .line 612
    goto :goto_1

    .line 603
    .end local v11    # "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v12    # "f_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v13    # "o_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 616
    :cond_2
    :goto_1
    if-nez v7, :cond_9

    .line 617
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperClasses()[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v8

    .line 619
    .local v8, "superclasses":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    array-length v10, v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_6

    aget-object v12, v8, v11

    .line 620
    .local v12, "superclass":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v13

    move-object v6, v13

    .line 621
    array-length v13, v6

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_5

    aget-object v15, v6, v14

    .line 622
    .local v15, "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual {v15}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 623
    invoke-virtual {v15}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v9

    .line 624
    .local v9, "f_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    move-object/from16 v16, v0

    .end local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .local v16, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 625
    .local v0, "o_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {v9, v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 626
    move-object v7, v15

    .line 627
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getAccessFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x5

    if-nez v10, :cond_7

    .line 628
    const/4 v7, 0x0

    goto :goto_4

    .line 622
    .end local v9    # "f_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v16    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :cond_3
    move-object/from16 v16, v0

    .line 621
    .end local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .end local v15    # "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .restart local v16    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    goto :goto_3

    .end local v16    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .restart local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :cond_5
    move-object/from16 v16, v0

    .line 619
    .end local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .end local v12    # "superclass":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v16    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v16    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .restart local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :cond_6
    move-object/from16 v16, v0

    .line 635
    .end local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .restart local v16    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :cond_7
    :goto_4
    if-nez v7, :cond_8

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Referenced field \'"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\' does not exist in class \'"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 638
    .end local v8    # "superclasses":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_8
    goto :goto_5

    .line 642
    .end local v16    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .restart local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :cond_9
    move-object/from16 v16, v0

    .end local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .restart local v16    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 643
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 659
    .end local v3    # "field_name":Ljava/lang/String;
    .end local v5    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v6    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v7    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v16    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :goto_5
    nop

    .line 660
    return-void

    .line 656
    :catch_0
    move-exception v0

    .line 658
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
    .locals 8
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;

    .line 1096
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;->getFieldName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "field_name":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->getObjectType(Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    .line 1098
    .local v1, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v2

    .line 1099
    .local v2, "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    const/4 v3, 0x0

    .line 1100
    .local v3, "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 1101
    .local v6, "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1102
    move-object v3, v6

    .line 1103
    goto :goto_1

    .line 1100
    .end local v6    # "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1106
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    .line 1110
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->isStatic()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Referenced field \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is not static which it should be."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1116
    .end local v0    # "field_name":Ljava/lang/String;
    .end local v1    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v2    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v3    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    :cond_2
    nop

    .line 1117
    return-void

    .line 1107
    .restart local v0    # "field_name":Ljava/lang/String;
    .restart local v1    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v2    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .restart local v3    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    :cond_3
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

    .end local p1    # "o":Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;
    throw v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    .end local v0    # "field_name":Ljava/lang/String;
    .end local v1    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v2    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v3    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .restart local p1    # "o":Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;
    :catch_0
    move-exception v0

    .line 1115
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

.method public visitIINC(Lorg/checkerframework/org/apache/bcel/generic/IINC;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/IINC;

    .line 934
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/IINC;->getIndex()I

    move-result v0

    .line 935
    .local v0, "idx":I
    const-string v1, "Index \'"

    if-gez v0, :cond_0

    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-negative."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 939
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 940
    .local v2, "maxminus1":I
    if-le v0, v2, :cond_1

    .line 941
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 944
    .end local v2    # "maxminus1":I
    :cond_1
    :goto_0
    return-void
.end method

.method public visitILOAD(Lorg/checkerframework/org/apache/bcel/generic/ILOAD;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ILOAD;

    .line 844
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ILOAD;->getIndex()I

    move-result v0

    .line 845
    .local v0, "idx":I
    const-string v1, "Index \'"

    if-gez v0, :cond_0

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-negative."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 850
    .local v2, "maxminus1":I
    if-le v0, v2, :cond_1

    .line 851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 854
    .end local v2    # "maxminus1":I
    :cond_1
    :goto_0
    return-void
.end method

.method public visitINSTANCEOF(Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;)V
    .locals 3
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;

    .line 744
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lorg/checkerframework/org/apache/bcel/generic/Instruction;I)V

    .line 745
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 746
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    if-nez v1, :cond_0

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting a CONSTANT_Class operand, but found a \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 749
    :cond_0
    return-void
.end method

.method public visitINVOKEDYNAMIC(Lorg/checkerframework/org/apache/bcel/generic/INVOKEDYNAMIC;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INVOKEDYNAMIC;

    .line 1132
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "INVOKEDYNAMIC instruction is not supported at this time"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitINVOKEINTERFACE(Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;

    .line 1143
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;->getClassName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    .line 1144
    .local v0, "classname":Ljava/lang/String;
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    .line 1145
    .local v1, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-direct {p0, v1, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->getMethodRecursive(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;)Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v2

    .line 1146
    .local v2, "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    if-nez v2, :cond_0

    .line 1147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Referenced method \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;->getMethodName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with expected signature \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;->getSignature(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not found in class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1148
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1147
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1150
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isClass()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Referenced class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is a class, but not an interface as expected."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    .end local v0    # "classname":Ljava/lang/String;
    .end local v1    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v2    # "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :cond_1
    nop

    .line 1157
    return-void

    .line 1153
    :catch_0
    move-exception v0

    .line 1155
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

.method public visitINVOKESPECIAL(Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;)V
    .locals 12
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;

    .line 1220
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getClassName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, "classname":Ljava/lang/String;
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    .line 1222
    .local v1, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-direct {p0, v1, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->getMethodRecursive(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;)Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v2

    .line 1223
    .local v2, "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    if-nez v2, :cond_0

    .line 1224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Referenced method \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getMethodName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with expected signature \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getSignature(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not found in class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1225
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1224
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1228
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->access$000(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v3

    .line 1229
    .local v3, "current":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isSuper()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1231
    invoke-static {v3, v1}, Lorg/checkerframework/org/apache/bcel/Repository;->instanceOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1233
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getMethodName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "<init>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1236
    const/4 v4, -0x1

    .line 1238
    .local v4, "supidx":I
    const/4 v5, 0x0

    .line 1239
    .local v5, "meth":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :goto_0
    if-eqz v4, :cond_4

    .line 1240
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassNameIndex()I

    move-result v6

    move v4, v6

    .line 1241
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v6

    move-object v3, v6

    .line 1243
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v6

    .line 1244
    .local v6, "meths":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 1245
    .local v9, "meth2":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v11}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getMethodName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1246
    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignature()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v10

    iget-object v11, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v11}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1247
    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignature()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v10

    iget-object v11, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v11}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->objarrayequals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1248
    move-object v5, v9

    .line 1249
    goto :goto_2

    .line 1244
    .end local v9    # "meth2":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1252
    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    .line 1253
    goto :goto_3

    .line 1255
    .end local v6    # "meths":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :cond_3
    goto :goto_0

    .line 1256
    :cond_4
    :goto_3
    if-nez v5, :cond_5

    .line 1257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACC_SUPER special lookup procedure not successful: method \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 1258
    invoke-virtual {p1, v7}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;->getMethodName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' with proper signature not declared in superclass hierarchy."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1257
    invoke-direct {p0, p1, v6}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    .end local v0    # "classname":Ljava/lang/String;
    .end local v1    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v2    # "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local v3    # "current":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v4    # "supidx":I
    .end local v5    # "meth":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :cond_5
    nop

    .line 1269
    return-void

    .line 1264
    :catch_0
    move-exception v0

    .line 1266
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
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;

    .line 1279
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;->getClassName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    .line 1280
    .local v0, "classname":Ljava/lang/String;
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    .line 1281
    .local v1, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-direct {p0, v1, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->getMethodRecursive(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;)Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    .local v2, "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    const-string v3, "Referenced method \'"

    if-nez v2, :cond_0

    .line 1283
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;->getMethodName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with expected signature \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 1284
    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;->getSignature(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not found in class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1283
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 1285
    :cond_0
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isStatic()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;->getMethodName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has ACC_STATIC unset."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1292
    .end local v0    # "classname":Ljava/lang/String;
    .end local v1    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v2    # "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :cond_1
    :goto_0
    nop

    .line 1293
    return-void

    .line 1289
    :catch_0
    move-exception v0

    .line 1291
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
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;

    .line 1304
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;->getClassName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, "classname":Ljava/lang/String;
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    .line 1306
    .local v1, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-direct {p0, v1, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->getMethodRecursive(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;)Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v2

    .line 1307
    .local v2, "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    if-nez v2, :cond_0

    .line 1308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Referenced method \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;->getMethodName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with expected signature \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 1309
    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;->getSignature(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not found in class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1308
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1311
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isClass()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Referenced class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is an interface, but not a class as expected."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    .end local v0    # "classname":Ljava/lang/String;
    .end local v1    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v2    # "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :cond_1
    nop

    .line 1319
    return-void

    .line 1315
    :catch_0
    move-exception v0

    .line 1317
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

.method public visitISTORE(Lorg/checkerframework/org/apache/bcel/generic/ISTORE;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ISTORE;

    .line 889
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ISTORE;->getIndex()I

    move-result v0

    .line 890
    .local v0, "idx":I
    const-string v1, "Index \'"

    if-gez v0, :cond_0

    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-negative."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 894
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 895
    .local v2, "maxminus1":I
    if-le v0, v2, :cond_1

    .line 896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 899
    .end local v2    # "maxminus1":I
    :cond_1
    :goto_0
    return-void
.end method

.method public visitInvokeInstruction(Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;)V
    .locals 11
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;

    .line 665
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lorg/checkerframework/org/apache/bcel/generic/Instruction;I)V

    .line 666
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;

    const-string v1, "<init>"

    const-string v2, "\'."

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 688
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 689
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;

    if-nez v3, :cond_1

    .line 690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Indexing a constant that\'s not a CONSTANT_InterfaceMethodref but a \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 698
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;

    .line 699
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;->getNameAndTypeIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 700
    .local v3, "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-object v5, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v4

    .line 701
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 702
    const-string v1, "Method to invoke must not be \'<init>\'."

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 704
    :cond_2
    const-string v1, "<clinit>"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 705
    const-string v1, "Method to invoke must not be \'<clinit>\'."

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 669
    .end local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .end local v3    # "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 670
    .restart local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;

    if-nez v3, :cond_4

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexing a constant that\'s not a CONSTANT_Methodref but a \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_1

    .line 675
    :cond_4
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;->getNameAndTypeIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 676
    .restart local v3    # "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 677
    .local v4, "cutf8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    instance-of v5, p1, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;

    if-nez v5, :cond_5

    .line 678
    const-string v5, "Only INVOKESPECIAL is allowed to invoke instance initialization methods."

    invoke-direct {p0, p1, v5}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 680
    :cond_5
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    const-string v5, "<"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 681
    const-string v1, "No method with a name beginning with \'<\' other than the instance initialization methods may be called by the method invocation instructions."

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 686
    .end local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .end local v3    # "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .end local v4    # "cutf8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    :cond_6
    :goto_1
    nop

    .line 711
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 712
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v1, :cond_8

    .line 713
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 715
    :cond_8
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    .line 716
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v1

    .line 717
    .local v1, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass2()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v4

    .line 718
    .local v4, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v5

    if-eq v5, v3, :cond_9

    .line 719
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Return type class/interface could not be verified successfully: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 723
    .end local v1    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v4    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :cond_9
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v1

    .line 724
    .local v1, "ts":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    array-length v4, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_c

    aget-object v6, v1, v5

    .line 725
    .local v6, "element":Lorg/checkerframework/org/apache/bcel/generic/Type;
    move-object v0, v6

    .line 726
    instance-of v7, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v7, :cond_a

    .line 727
    move-object v7, v0

    check-cast v7, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 729
    :cond_a
    instance-of v7, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v7, :cond_b

    .line 730
    move-object v7, v0

    check-cast v7, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v7

    .line 731
    .local v7, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass2()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v8

    .line 732
    .local v8, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v9

    if-eq v9, v3, :cond_b

    .line 733
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Argument type class/interface could not be verified successfully: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 734
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 733
    invoke-direct {p0, p1, v9}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 724
    .end local v6    # "element":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v7    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v8    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 739
    :cond_c
    return-void
.end method

.method public visitLDC(Lorg/checkerframework/org/apache/bcel/generic/LDC;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LDC;

    .line 545
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LDC;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lorg/checkerframework/org/apache/bcel/generic/Instruction;I)V

    .line 546
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LDC;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 547
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operand of LDC or LDC_W is CONSTANT_Class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' - this is only supported in JDK 1.5 and higher."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->addMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_0
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    if-nez v1, :cond_1

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operand of LDC or LDC_W must be one of CONSTANT_Integer, CONSTANT_Float or CONSTANT_String, but is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 558
    :cond_1
    :goto_0
    return-void
.end method

.method public visitLDC2_W(Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;

    .line 564
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lorg/checkerframework/org/apache/bcel/generic/Instruction;I)V

    .line 565
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 566
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    if-nez v1, :cond_0

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operand of LDC2_W must be CONSTANT_Long or CONSTANT_Double, but is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 571
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lorg/checkerframework/org/apache/bcel/generic/Instruction;I)V
    :try_end_0
    .catch Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionOperandConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    nop

    .line 576
    return-void

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, "e":Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionOperandConstraintException;
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v3, "OOPS: Does not BCEL handle that? LDC2_W operand has a problem."

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public visitLLOAD(Lorg/checkerframework/org/apache/bcel/generic/LLOAD;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LLOAD;

    .line 964
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LLOAD;->getIndex()I

    move-result v0

    .line 965
    .local v0, "idx":I
    const-string v1, "Index \'"

    if-gez v0, :cond_0

    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-negative. [Constraint by JustIce as an analogon to the single-slot xLOAD/xSTORE instructions; may not happen anyway.]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 970
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .line 971
    .local v2, "maxminus2":I
    if-le v0, v2, :cond_1

    .line 972
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' must not be greater than max_locals-2 \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 975
    .end local v2    # "maxminus2":I
    :cond_1
    :goto_0
    return-void
.end method

.method public visitLOOKUPSWITCH(Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;)V
    .locals 5
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;

    .line 1028
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;->getMatchs()[I

    move-result-object v0

    .line 1029
    .local v0, "matchs":[I
    const/high16 v1, -0x80000000

    .line 1030
    .local v1, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 1031
    aget v3, v0, v2

    if-ne v3, v1, :cond_0

    if-eqz v2, :cond_0

    .line 1032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Match \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' occurs more than once."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1034
    :cond_0
    aget v3, v0, v2

    if-ge v3, v1, :cond_1

    .line 1035
    const-string v3, "Lookup table must be sorted but isn\'t."

    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_1

    .line 1038
    :cond_1
    aget v1, v0, v2

    .line 1030
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1041
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public visitLSTORE(Lorg/checkerframework/org/apache/bcel/generic/LSTORE;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LSTORE;

    .line 996
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LSTORE;->getIndex()I

    move-result v0

    .line 997
    .local v0, "idx":I
    const-string v1, "Index \'"

    if-gez v0, :cond_0

    .line 998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-negative. [Constraint by JustIce as an analogon to the single-slot xLOAD/xSTORE instructions; may not happen anyway.]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 1002
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .line 1003
    .local v2, "maxminus2":I
    if-le v0, v2, :cond_1

    .line 1004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' must not be greater than max_locals-2 \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1007
    .end local v2    # "maxminus2":I
    :cond_1
    :goto_0
    return-void
.end method

.method public visitLoadClass(Lorg/checkerframework/org/apache/bcel/generic/LoadClass;)V
    .locals 6
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/LoadClass;

    .line 523
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-interface {p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/LoadClass;->getLoadClassType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v0

    .line 524
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v1

    .line 526
    .local v1, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass1()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v2

    .line 527
    .local v2, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 528
    move-object v3, p1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 529
    invoke-interface {p1, v5}, Lorg/checkerframework/org/apache/bcel/generic/LoadClass;->getLoadClassType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is referenced, but cannot be loaded: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 528
    invoke-direct {p0, v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 532
    .end local v1    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v2    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :cond_0
    return-void
.end method

.method public visitMULTIANEWARRAY(Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;)V
    .locals 7
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;

    .line 782
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lorg/checkerframework/org/apache/bcel/generic/Instruction;I)V

    .line 783
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 784
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    const-string v2, "\'."

    if-nez v1, :cond_0

    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting a CONSTANT_Class operand, but found a \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 787
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->getDimensions()S

    move-result v1

    .line 788
    .local v1, "dimensions2create":I
    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 789
    const-string v3, "Number of dimensions to create must be greater than zero."

    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 791
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v3}, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    .line 792
    .local v3, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v4, v3, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v4, :cond_3

    .line 793
    move-object v4, v3

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getDimensions()I

    move-result v4

    .line 794
    .local v4, "dimensions":I
    if-ge v4, v1, :cond_2

    .line 795
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not allowed to create array with more dimensions (\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\') than the one referenced by the CONSTANT_Class \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 799
    .end local v4    # "dimensions":I
    :cond_2
    goto :goto_0

    .line 801
    :cond_3
    const-string v2, "Expecting a CONSTANT_Class referencing an array type. [Constraint not found in The Java Virtual Machine Specification, Second Edition, 4.8.1]"

    invoke-direct {p0, p1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 804
    :goto_0
    return-void
.end method

.method public visitNEW(Lorg/checkerframework/org/apache/bcel/generic/NEW;)V
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/NEW;

    .line 764
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/NEW;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lorg/checkerframework/org/apache/bcel/generic/Instruction;I)V

    .line 765
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/NEW;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 766
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    if-nez v1, :cond_0

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting a CONSTANT_Class operand, but found a \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 770
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 771
    .local v1, "cutf8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    .line 772
    .local v2, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v3, v2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v3, :cond_1

    .line 773
    const-string v3, "NEW must not be used to create an array."

    invoke-direct {p0, p1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 777
    .end local v1    # "cutf8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    .end local v2    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_1
    :goto_0
    return-void
.end method

.method public visitNEWARRAY(Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;)V
    .locals 2
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;

    .line 828
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;->getTypecode()B

    move-result v0

    .line 829
    .local v0, "t":B
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 837
    const-string v1, "Illegal type code \'+t+\' for \'atype\' operand."

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 839
    :cond_0
    return-void
.end method

.method public visitPUTSTATIC(Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;)V
    .locals 9
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;

    .line 1054
    const-string v0, "<clinit>"

    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;->getFieldName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "field_name":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->getObjectType(Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v2

    .line 1056
    .local v2, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v3

    .line 1057
    .local v3, "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    const/4 v4, 0x0

    .line 1058
    .local v4, "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 1059
    .local v7, "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1060
    move-object v4, v7

    .line 1061
    goto :goto_1

    .line 1058
    .end local v7    # "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1064
    :cond_1
    :goto_1
    if-eqz v4, :cond_5

    .line 1068
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->isFinal()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "Referenced field \'"

    if-eqz v5, :cond_2

    .line 1069
    :try_start_1
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;

    invoke-static {v5}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->access$000(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->getObjectType(Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1070
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' is final and must therefore be declared in the current class \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;

    .line 1072
    invoke-static {v7}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->access$000(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' which is not the case: it is declared in \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1, v7}, Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;->getReferenceType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1070
    invoke-direct {p0, p1, v5}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1076
    :cond_2
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->isStatic()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1077
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is not static which it should be."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1080
    :cond_3
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;

    invoke-static {v5}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->access$000(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;

    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->access$100(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1083
    .local v5, "meth_name":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isClass()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1084
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Interface field \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' must be set in a \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\' method."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 1089
    .end local v1    # "field_name":Ljava/lang/String;
    .end local v2    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v3    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v4    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v5    # "meth_name":Ljava/lang/String;
    :cond_4
    nop

    .line 1090
    return-void

    .line 1065
    .restart local v1    # "field_name":Ljava/lang/String;
    .restart local v2    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v3    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .restart local v4    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    :cond_5
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not found in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    .end local p1    # "o":Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;
    throw v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1086
    .end local v1    # "field_name":Ljava/lang/String;
    .end local v2    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v3    # "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v4    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .restart local p1    # "o":Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;
    :catch_0
    move-exception v0

    .line 1088
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
    .locals 4
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/RET;

    .line 949
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/RET;->getIndex()I

    move-result v0

    .line 950
    .local v0, "idx":I
    const-string v1, "Index \'"

    if-gez v0, :cond_0

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-negative."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    .line 954
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 955
    .local v2, "maxminus1":I
    if-le v0, v2, :cond_1

    .line 956
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Ljava/lang/String;)V

    .line 959
    .end local v2    # "maxminus1":I
    :cond_1
    :goto_0
    return-void
.end method

.method public visitTABLESWITCH(Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;)V
    .locals 0
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;

    .line 1048
    return-void
.end method
