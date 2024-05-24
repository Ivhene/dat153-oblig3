.class Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$InnerClassDetector;
.super Lorg/checkerframework/org/apache/bcel/classfile/EmptyVisitor;
.source "Pass2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerClassDetector"
.end annotation


# instance fields
.field private final cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

.field private hasInnerClass:Z

.field private final jc:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 1
    .param p1, "_jc"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 1550
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/EmptyVisitor;-><init>()V

    .line 1545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$InnerClassDetector;->hasInnerClass:Z

    .line 1551
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$InnerClassDetector;->jc:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 1552
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$InnerClassDetector;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 1553
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;

    invoke-direct {v0, p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visit()V

    .line 1554
    return-void
.end method


# virtual methods
.method public innerClassReferenced()Z
    .locals 1

    .line 1560
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$InnerClassDetector;->hasInnerClass:Z

    return v0
.end method

.method public visitConstantClass(Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;)V
    .locals 6
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 1565
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$InnerClassDetector;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 1566
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    if-eqz v1, :cond_0

    .line 1567
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    .line 1568
    .local v1, "classname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$InnerClassDetector;->jc:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1569
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$InnerClassDetector;->hasInnerClass:Z

    .line 1572
    .end local v1    # "classname":Ljava/lang/String;
    :cond_0
    return-void
.end method
