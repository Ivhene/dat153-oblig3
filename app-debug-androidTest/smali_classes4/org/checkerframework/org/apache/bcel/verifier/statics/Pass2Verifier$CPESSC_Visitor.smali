.class final Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;
.super Lorg/checkerframework/org/apache/bcel/classfile/EmptyVisitor;
.source "Pass2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CPESSC_Visitor"
.end annotation


# instance fields
.field private final CONST_Class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final CONST_Double:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final CONST_Float:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final CONST_Integer:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final CONST_Long:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final CONST_NameAndType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final CONST_String:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final CONST_Utf8:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final carrier:Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;

.field private final cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

.field private final cplen:I

.field private final field_names:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final field_names_and_desc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final jc:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

.field private final method_names_and_desc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 0
    .param p2, "_jc"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 345
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/EmptyVisitor;-><init>()V

    .line 341
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->field_names:Ljava/util/Set;

    .line 342
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->field_names_and_desc:Ljava/util/Set;

    .line 343
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->method_names_and_desc:Ljava/util/Set;

    .line 346
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->jc:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 347
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object p1

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 348
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getLength()I

    move-result p1

    iput p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cplen:I

    .line 350
    const-class p1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    .line 356
    const-class p1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_String:Ljava/lang/Class;

    .line 357
    const-class p1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Integer:Ljava/lang/Class;

    .line 358
    const-class p1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Float:Ljava/lang/Class;

    .line 359
    const-class p1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Long:Ljava/lang/Class;

    .line 360
    const-class p1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Double:Ljava/lang/Class;

    .line 361
    const-class p1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_NameAndType:Ljava/lang/Class;

    .line 362
    const-class p1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    .line 364
    new-instance p1, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;

    invoke-direct {p1, p2, p0}, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->carrier:Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;

    .line 365
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visit()V

    .line 366
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;
    .param p2, "x1"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .param p3, "x2"    # Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$1;

    .line 321
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V

    return-void
.end method

.method private checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V
    .locals 5
    .param p1, "referrer"    # Lorg/checkerframework/org/apache/bcel/classfile/Node;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/bcel/classfile/Node;",
            "I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 369
    .local p3, "shouldbe":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "\'."

    if-ltz p2, :cond_1

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cplen:I

    if-ge p2, v1, :cond_1

    .line 372
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    .line 373
    .local v1, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    invoke-virtual {p3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    return-void

    .line 375
    :cond_0
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal constant \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' at index \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 376
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' expects a \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 370
    .end local v1    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :cond_1
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid index \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' used by \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public visitCode(Lorg/checkerframework/org/apache/bcel/classfile/Code;)V
    .locals 30
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/Code;

    .line 969
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getNameIndex()I

    move-result v0

    iget-object v3, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {v1, v2, v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 971
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getNameIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 972
    .local v3, "name":Ljava/lang/String;
    const-string v0, "Code"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v4, "\'."

    if-eqz v0, :cond_18

    .line 977
    const/4 v0, 0x0

    .line 978
    .local v0, "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :try_start_1
    iget-object v5, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->carrier:Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->predecessor()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    const-string v6, "Code attribute \'"

    if-nez v5, :cond_0

    .line 979
    :try_start_2
    iget-object v4, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is not declared in a method_info structure but in \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->carrier:Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;

    .line 980
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->predecessor()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'. Ignored."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 979
    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    .line 981
    return-void

    .line 983
    :cond_0
    iget-object v5, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->carrier:Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->predecessor()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 986
    .end local v0    # "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .local v5, "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getCode()[B

    move-result-object v0

    array-length v0, v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v7, "\' (method \'"

    if-eqz v0, :cond_17

    .line 992
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getExceptionTable()[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    move-result-object v0

    move-object v8, v0

    .line 993
    .local v8, "exc_table":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    array-length v0, v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v0, :cond_7

    aget-object v11, v8, v10

    .line 994
    .local v11, "element":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getCatchType()I

    move-result v12

    .line 995
    .local v12, "exc_index":I
    if-eqz v12, :cond_6

    .line 996
    iget-object v13, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    invoke-direct {v1, v2, v12, v13}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 997
    iget-object v13, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v13, v12}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v13

    check-cast v13, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    move-object v14, v13

    check-cast v14, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 999
    .local v13, "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    invoke-virtual {v13}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v14

    iget-object v15, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {v1, v13, v14, v15}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 1000
    iget-object v14, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v13}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v15

    invoke-virtual {v14, v15}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v14

    check-cast v14, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v14}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x2f

    const/16 v9, 0x2e

    invoke-virtual {v14, v15, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 1002
    .local v9, "cname":Ljava/lang/String;
    invoke-static {v9}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v14

    .line 1003
    .local v14, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v14}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass1()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v15

    .line 1005
    .local v15, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    move/from16 v16, v0

    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    const-string v2, "\' that references \'"

    move-object/from16 v17, v8

    .end local v8    # "exc_table":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .local v17, "exc_table":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    const-string v8, "\') has an exception_table entry \'"

    if-ne v15, v0, :cond_5

    .line 1012
    :try_start_4
    invoke-static {v9}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    .line 1014
    .local v0, "e":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    sget-object v18, Lorg/checkerframework/org/apache/bcel/generic/Type;->THROWABLE:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual/range {v18 .. v18}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v18

    move-object/from16 v19, v18

    .line 1016
    .local v19, "t":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    sget-object v18, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual/range {v18 .. v18}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v18

    move-object/from16 v20, v18

    .line 1017
    .local v20, "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :goto_1
    move/from16 v18, v12

    move-object/from16 v12, v20

    .end local v20    # "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .local v12, "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .local v18, "exc_index":I
    if-eq v0, v12, :cond_3

    .line 1018
    move-object/from16 v20, v12

    move-object/from16 v12, v19

    .end local v19    # "t":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .local v12, "t":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v20    # "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    if-ne v0, v12, :cond_1

    .line 1019
    move-object/from16 v19, v13

    goto/16 :goto_2

    .line 1022
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v19

    move-object/from16 v14, v19

    .line 1023
    invoke-virtual {v14}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass1()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v19

    move-object/from16 v15, v19

    .line 1024
    move-object/from16 v19, v13

    .end local v13    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .local v19, "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    sget-object v13, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    if-ne v15, v13, :cond_2

    .line 1030
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v13, v19

    move-object/from16 v19, v12

    move/from16 v12, v18

    goto :goto_1

    .line 1025
    :cond_2
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1026
    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\' as an Exception but \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1027
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\' in the ancestor hierachy does not pass verification pass 1: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    throw v4

    .line 1017
    .end local v20    # "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .local v12, "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v13    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .local v19, "t":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    :cond_3
    move-object/from16 v20, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v13

    .line 1032
    .end local v13    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .local v12, "t":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .local v19, "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .restart local v20    # "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :goto_2
    if-ne v0, v12, :cond_4

    goto/16 :goto_3

    .line 1033
    :cond_4
    new-instance v10, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1034
    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\' as an Exception but it is not a subclass of \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1035
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    throw v10

    .line 1006
    .end local v0    # "e":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v18    # "exc_index":I
    .end local v19    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .end local v20    # "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .local v12, "exc_index":I
    .restart local v13    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    :cond_5
    move/from16 v18, v12

    move-object/from16 v19, v13

    .end local v12    # "exc_index":I
    .end local v13    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .restart local v18    # "exc_index":I
    .restart local v19    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1007
    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' as an Exception but it does not pass verification pass 1: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    throw v0

    .line 995
    .end local v9    # "cname":Ljava/lang/String;
    .end local v14    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v15    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .end local v17    # "exc_table":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .end local v18    # "exc_index":I
    .end local v19    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .restart local v8    # "exc_table":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .restart local v12    # "exc_index":I
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    :cond_6
    move/from16 v16, v0

    move-object/from16 v17, v8

    move/from16 v18, v12

    .line 993
    .end local v8    # "exc_table":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .end local v11    # "element":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .end local v12    # "exc_index":I
    .restart local v17    # "exc_table":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p1

    move/from16 v0, v16

    move-object/from16 v8, v17

    goto/16 :goto_0

    .line 1043
    .end local v17    # "exc_table":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .restart local v8    # "exc_table":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    :cond_7
    move-object/from16 v17, v8

    .end local v8    # "exc_table":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .restart local v17    # "exc_table":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    const/4 v0, -0x1

    .line 1044
    .local v0, "method_number":I
    iget-object v2, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$400(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v2

    .line 1045
    .local v2, "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    const/4 v6, 0x0

    .local v6, "mn":I
    :goto_4
    array-length v8, v2

    if-ge v6, v8, :cond_a

    .line 1047
    aget-object v8, v2, v6

    if-ne v5, v8, :cond_8

    const/4 v8, 0x1

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    .line 1048
    .local v8, "found":Z
    :goto_5
    if-eqz v8, :cond_9

    .line 1049
    move v0, v6

    .line 1050
    goto :goto_6

    .line 1045
    .end local v8    # "found":Z
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    move v6, v0

    .line 1053
    .end local v0    # "method_number":I
    .local v6, "method_number":I
    :goto_6
    if-ltz v6, :cond_16

    .line 1057
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$500(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;)[Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;

    move-result-object v0

    new-instance v8, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getMaxLocals()I

    move-result v9

    invoke-direct {v8, v9}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;-><init>(I)V

    aput-object v8, v0, v6

    .line 1059
    const/4 v0, 0x0

    .line 1061
    .local v0, "num_of_lvt_attribs":I
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v8

    .line 1062
    .local v8, "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    const/4 v9, 0x0

    move v10, v9

    move v9, v0

    .end local v0    # "num_of_lvt_attribs":I
    .local v9, "num_of_lvt_attribs":I
    .local v10, "a":I
    :goto_7
    array-length v0, v8

    if-ge v10, v0, :cond_15

    .line 1063
    aget-object v0, v8, v10

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    const-string v11, "\' as an attribute of Code attribute \'"

    const-string v12, "Attribute \'"

    if-nez v0, :cond_b

    :try_start_5
    aget-object v0, v8, v10

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    if-nez v0, :cond_b

    .line 1065
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v8, v10

    invoke-static {v13}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\') is unknown and will therefore be ignored."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    goto :goto_8

    .line 1069
    :cond_b
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v8, v10

    invoke-static {v13}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\') will effectively be ignored and is only useful for debuggers and such."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    .line 1077
    :goto_8
    aget-object v0, v8, v10

    instance-of v0, v0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    if-eqz v0, :cond_13

    .line 1079
    aget-object v0, v8, v10

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    move-object v11, v0

    .line 1081
    .local v11, "lvt":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->getNameIndex()I

    move-result v0

    iget-object v12, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {v1, v11, v0, v12}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 1083
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->getNameIndex()I

    move-result v12

    invoke-virtual {v0, v12}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 1084
    .local v12, "lvtname":Ljava/lang/String;
    const-string v0, "LocalVariableTable"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1089
    move-object/from16 v13, p1

    .line 1092
    .local v13, "code":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->getLocalVariableTable()[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    move-result-object v0

    move-object v14, v0

    .line 1094
    .local v14, "localvariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    array-length v0, v14

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v0, :cond_10

    aget-object v16, v14, v15

    .line 1095
    .local v16, "localvariable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    move/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getNameIndex()I

    move-result v0

    move-object/from16 v19, v2

    .end local v2    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .local v19, "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    iget-object v2, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {v1, v11, v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 1096
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getNameIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1097
    .local v2, "localname":Ljava/lang/String;
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$600(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1102
    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getSignatureIndex()I

    move-result v0

    move-object/from16 v26, v8

    .end local v8    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v26, "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    iget-object v8, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {v1, v11, v0, v8}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 1103
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 1104
    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getSignatureIndex()I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-object v8, v0

    check-cast v8, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v8, v0

    .line 1107
    .local v8, "localsig":Ljava/lang/String;
    :try_start_6
    invoke-static {v8}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0
    :try_end_6
    .catch Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v27, v0

    .line 1112
    .local v27, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    nop

    .line 1113
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getIndex()I

    move-result v0

    move/from16 v28, v0

    .line 1114
    .local v28, "localindex":I
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    move-object/from16 v29, v14

    move-object/from16 v14, v27

    .end local v27    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .local v14, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .local v29, "localvariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    if-eq v14, v0, :cond_d

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne v14, v0, :cond_c

    goto :goto_a

    :cond_c
    move/from16 v0, v28

    goto :goto_b

    :cond_d
    :goto_a
    add-int/lit8 v0, v28, 0x1

    :goto_b
    move-object/from16 v27, v3

    .end local v3    # "name":Ljava/lang/String;
    .local v27, "name":Ljava/lang/String;
    invoke-virtual {v13}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getMaxLocals()I

    move-result v3
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    if-ge v0, v3, :cond_e

    .line 1122
    :try_start_8
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$500(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;)[Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;

    move-result-object v0

    aget-object v20, v0, v6

    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getStartPC()I

    move-result v23

    .line 1123
    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getLength()I

    move-result v24

    .line 1122
    move/from16 v21, v28

    move-object/from16 v22, v2

    move-object/from16 v25, v14

    invoke-virtual/range {v20 .. v25}, Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;->add(ILjava/lang/String;IILorg/checkerframework/org/apache/bcel/generic/Type;)V
    :try_end_8
    .catch Lorg/checkerframework/org/apache/bcel/verifier/exc/LocalVariableInfoInconsistentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1129
    nop

    .line 1094
    .end local v2    # "localname":Ljava/lang/String;
    .end local v8    # "localsig":Ljava/lang/String;
    .end local v14    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v16    # "localvariable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .end local v28    # "localindex":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v18

    move-object/from16 v2, v19

    move-object/from16 v8, v26

    move-object/from16 v3, v27

    move-object/from16 v14, v29

    goto/16 :goto_9

    .line 1125
    .restart local v2    # "localname":Ljava/lang/String;
    .restart local v8    # "localsig":Ljava/lang/String;
    .restart local v14    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .restart local v16    # "localvariable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .restart local v28    # "localindex":I
    :catch_0
    move-exception v0

    .line 1126
    .local v0, "lviie":Lorg/checkerframework/org/apache/bcel/verifier/exc/LocalVariableInfoInconsistentException;
    :try_start_9
    new-instance v3, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Conflicting information in LocalVariableTable \'"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, "\' found in Code attribute \'"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1127
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1128
    invoke-static {v5}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\'). "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/LocalVariableInfoInconsistentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    throw v3

    .line 1115
    .end local v0    # "lviie":Lorg/checkerframework/org/apache/bcel/verifier/exc/LocalVariableInfoInconsistentException;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    :cond_e
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocalVariableTable attribute \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\' references a LocalVariable \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1116
    invoke-static/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\' with an index that exceeds the surrounding Code attribute\'s max_locals value of \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1118
    invoke-virtual {v13}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getMaxLocals()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    throw v0

    .line 1109
    .end local v27    # "name":Ljava/lang/String;
    .end local v28    # "localindex":I
    .end local v29    # "localvariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .restart local v3    # "name":Ljava/lang/String;
    .local v14, "localvariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    :catch_1
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v29, v14

    move-object v3, v0

    .end local v3    # "name":Ljava/lang/String;
    .end local v14    # "localvariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .restart local v27    # "name":Ljava/lang/String;
    .restart local v29    # "localvariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    move-object v0, v3

    .line 1110
    .local v0, "cfe":Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
    new-instance v3, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Illegal descriptor (==signature) \'"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "\' used by LocalVariable \'"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1111
    invoke-static/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "\' referenced by \'"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    throw v3

    .line 1098
    .end local v0    # "cfe":Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
    .end local v26    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v27    # "name":Ljava/lang/String;
    .end local v29    # "localvariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .restart local v3    # "name":Ljava/lang/String;
    .local v8, "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v14    # "localvariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    :cond_f
    move-object/from16 v27, v3

    move-object/from16 v26, v8

    move-object/from16 v29, v14

    .end local v3    # "name":Ljava/lang/String;
    .end local v8    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v14    # "localvariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .restart local v26    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v27    # "name":Ljava/lang/String;
    .restart local v29    # "localvariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalVariableTable \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' references a local variable by the name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' which is not a legal Java simple name."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    throw v0

    .line 1132
    .end local v16    # "localvariable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .end local v19    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local v26    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v27    # "name":Ljava/lang/String;
    .end local v29    # "localvariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .local v2, "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v8    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v14    # "localvariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    :cond_10
    move-object/from16 v19, v2

    move-object/from16 v27, v3

    move-object/from16 v26, v8

    move-object/from16 v29, v14

    .end local v2    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local v3    # "name":Ljava/lang/String;
    .end local v8    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v14    # "localvariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .restart local v19    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .restart local v26    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v27    # "name":Ljava/lang/String;
    .restart local v29    # "localvariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    add-int/lit8 v9, v9, 0x1

    .line 1133
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isStatic()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getMaxLocals()I

    move-result v0

    if-gt v9, v0, :cond_11

    goto :goto_c

    .line 1134
    :cond_11
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of LocalVariableTable attributes of Code attribute \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1135
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\') exceeds number of local variable slots \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getMaxLocals()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (\'There may be at most one LocalVariableTable attribute per local variable in the Code attribute.\')."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    throw v0

    .line 1085
    .end local v13    # "code":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .end local v19    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local v26    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v27    # "name":Ljava/lang/String;
    .end local v29    # "localvariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .restart local v2    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v8    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    :cond_12
    move-object/from16 v19, v2

    move-object/from16 v27, v3

    move-object/from16 v26, v8

    .end local v2    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local v3    # "name":Ljava/lang/String;
    .end local v8    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v19    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .restart local v26    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v27    # "name":Ljava/lang/String;
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The LocalVariableTable attribute \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not correctly named \'LocalVariableTable\' but \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    throw v0

    .line 1077
    .end local v11    # "lvt":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    .end local v12    # "lvtname":Ljava/lang/String;
    .end local v19    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local v26    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v27    # "name":Ljava/lang/String;
    .restart local v2    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v8    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    :cond_13
    move-object/from16 v19, v2

    move-object/from16 v27, v3

    move-object/from16 v26, v8

    .line 1062
    .end local v2    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local v3    # "name":Ljava/lang/String;
    .end local v8    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v19    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .restart local v26    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v27    # "name":Ljava/lang/String;
    :cond_14
    :goto_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v19

    move-object/from16 v8, v26

    move-object/from16 v3, v27

    goto/16 :goto_7

    .end local v19    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local v26    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v27    # "name":Ljava/lang/String;
    .restart local v2    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v8    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_15
    move-object/from16 v19, v2

    move-object/from16 v27, v3

    move-object/from16 v26, v8

    .line 1144
    .end local v2    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local v6    # "method_number":I
    .end local v8    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v9    # "num_of_lvt_attribs":I
    .end local v10    # "a":I
    .end local v17    # "exc_table":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    nop

    .line 1146
    return-void

    .line 1054
    .restart local v2    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .restart local v6    # "method_number":I
    .restart local v17    # "exc_table":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    :cond_16
    move-object/from16 v19, v2

    move-object/from16 v27, v3

    .end local v2    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local v3    # "name":Ljava/lang/String;
    .restart local v19    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .restart local v27    # "name":Ljava/lang/String;
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v2, "Could not find a known BCEL Method object in the corresponding BCEL JavaClass object."

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    throw v0

    .line 987
    .end local v6    # "method_number":I
    .end local v17    # "exc_table":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .end local v19    # "ms":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local v27    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    :cond_17
    move-object/from16 v27, v3

    .end local v3    # "name":Ljava/lang/String;
    .restart local v27    # "name":Ljava/lang/String;
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code array of Code attribute \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 988
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\') must not be empty."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    throw v0

    .line 973
    .end local v5    # "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local v27    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    :cond_18
    move-object/from16 v27, v3

    .end local v3    # "name":Ljava/lang/String;
    .restart local v27    # "name":Ljava/lang/String;
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Code attribute \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 974
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not correctly named \'Code\' but \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v27

    .end local v27    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    throw v0
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    .line 1141
    .end local v3    # "name":Ljava/lang/String;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    :catch_2
    move-exception v0

    .line 1143
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public visitCodeException(Lorg/checkerframework/org/apache/bcel/classfile/CodeException;)V
    .locals 0
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    .line 1262
    return-void
.end method

.method public visitConstantClass(Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;)V
    .locals 3
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 445
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getTag()B

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 448
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 450
    return-void

    .line 446
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong constant tag in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitConstantDouble(Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;)V
    .locals 3
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    .line 505
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->getTag()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 509
    return-void

    .line 506
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong constant tag in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitConstantFieldref(Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;)V
    .locals 3
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;

    .line 453
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;->getTag()B

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 456
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;->getClassIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 457
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;->getNameAndTypeIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_NameAndType:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 458
    return-void

    .line 454
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong constant tag in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitConstantFloat(Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;)V
    .locals 3
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    .line 491
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->getTag()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 495
    return-void

    .line 492
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong constant tag in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitConstantInteger(Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;)V
    .locals 3
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 484
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getTag()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 488
    return-void

    .line 485
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong constant tag in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitConstantInterfaceMethodref(Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;)V
    .locals 3
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;

    .line 469
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;->getTag()B

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 472
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;->getClassIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 473
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;->getNameAndTypeIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_NameAndType:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 474
    return-void

    .line 470
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong constant tag in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitConstantLong(Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;)V
    .locals 3
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    .line 498
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->getTag()B

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 502
    return-void

    .line 499
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong constant tag in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitConstantMethodref(Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;)V
    .locals 3
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;

    .line 461
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;->getTag()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 464
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;->getClassIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 465
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;->getNameAndTypeIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_NameAndType:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 466
    return-void

    .line 462
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong constant tag in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitConstantNameAndType(Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;)V
    .locals 3
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 512
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getTag()B

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 515
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 517
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 518
    return-void

    .line 513
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong constant tag in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 1268
    return-void
.end method

.method public visitConstantString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;)V
    .locals 3
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    .line 477
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->getTag()B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 480
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->getStringIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 481
    return-void

    .line 478
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong constant tag in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitConstantUtf8(Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;)V
    .locals 3
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 521
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getTag()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 525
    return-void

    .line 522
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong constant tag in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitConstantValue(Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;)V
    .locals 10
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    .line 917
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 919
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->getNameIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "name":Ljava/lang/String;
    const-string v1, "ConstantValue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\'."

    if-eqz v1, :cond_8

    .line 925
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->carrier:Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->predecessor()Ljava/lang/Object;

    move-result-object v1

    .line 926
    .local v1, "pred":Ljava/lang/Object;
    instance-of v3, v1, Lorg/checkerframework/org/apache/bcel/classfile/Field;

    if-eqz v3, :cond_7

    .line 927
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 929
    .local v3, "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignatureIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-object v5, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    .line 931
    .local v4, "field_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->getConstantValueIndex()I

    move-result v5

    .line 932
    .local v5, "index":I
    if-ltz v5, :cond_6

    iget v6, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cplen:I

    if-ge v5, v6, :cond_6

    .line 935
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v6, v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v6

    .line 937
    .local v6, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Long:Ljava/lang/Class;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 938
    return-void

    .line 940
    :cond_0
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Float:Ljava/lang/Class;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 941
    return-void

    .line 943
    :cond_1
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Double:Ljava/lang/Class;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 944
    return-void

    .line 946
    :cond_2
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Integer:Ljava/lang/Class;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 947
    invoke-virtual {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 948
    :cond_3
    return-void

    .line 950
    :cond_4
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_String:Ljava/lang/Class;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lorg/checkerframework/org/apache/bcel/generic/Type;->STRING:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 951
    return-void

    .line 954
    :cond_5
    new-instance v7, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal type of ConstantValue \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' embedding Constant \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'. It is referenced by field \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 955
    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' expecting a different type: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 933
    .end local v6    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :cond_6
    new-instance v6, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid index \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' used by \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 957
    .end local v3    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .end local v4    # "field_type":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v5    # "index":I
    :cond_7
    return-void

    .line 921
    .end local v1    # "pred":Ljava/lang/Object;
    :cond_8
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The ConstantValue attribute \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 922
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not correctly named \'ConstantValue\' but \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public visitDeprecated(Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;)V
    .locals 4
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;

    .line 857
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 859
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;->getNameIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "name":Ljava/lang/String;
    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    return-void

    .line 861
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Deprecated attribute \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not correctly named \'Deprecated\' but \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public visitExceptionTable(Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;)V
    .locals 18
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    .line 1152
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->getNameIndex()I

    move-result v0

    iget-object v3, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {v1, v2, v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 1154
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->getNameIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, "name":Ljava/lang/String;
    const-string v3, "Exceptions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "\'."

    if-eqz v3, :cond_6

    .line 1160
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;->getExceptionIndexTable()[I

    move-result-object v3

    .line 1162
    .local v3, "exc_indices":[I
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    aget v7, v3, v6

    .line 1163
    .local v7, "exc_indice":I
    iget-object v8, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    invoke-direct {v1, v2, v7, v8}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 1165
    iget-object v8, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v8, v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    move-object v9, v8

    check-cast v9, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 1166
    .local v8, "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v9

    iget-object v10, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {v1, v8, v9, v10}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 1168
    iget-object v9, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2f

    const/16 v11, 0x2e

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 1170
    .local v9, "cname":Ljava/lang/String;
    invoke-static {v9}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v10

    .line 1171
    .local v10, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass1()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v11

    .line 1173
    .local v11, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    sget-object v12, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v13, "\' references \'"

    const-string v14, "Exceptions attribute \'"

    if-ne v11, v12, :cond_4

    .line 1179
    :try_start_2
    invoke-static {v9}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v12

    .line 1181
    .local v12, "e":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    sget-object v15, Lorg/checkerframework/org/apache/bcel/generic/Type;->THROWABLE:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v15}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v15

    .line 1183
    .local v15, "t":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    sget-object v16, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1184
    .local v17, "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :goto_1
    move-object/from16 v1, v17

    .end local v17    # "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .local v1, "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    if-eq v12, v1, :cond_2

    .line 1185
    if-ne v12, v15, :cond_0

    .line 1186
    move-object/from16 v16, v1

    goto :goto_2

    .line 1189
    :cond_0
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v16

    move-object/from16 v10, v16

    .line 1190
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass1()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v16

    move-object/from16 v11, v16

    .line 1191
    move-object/from16 v16, v1

    .end local v1    # "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .local v16, "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    sget-object v1, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    if-ne v11, v1, :cond_1

    .line 1196
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    move-object v12, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v16

    goto :goto_1

    .line 1192
    :cond_1
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' as an Exception but \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1193
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in the ancestor hierachy does not pass verification pass 1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
    throw v1

    .line 1184
    .end local v16    # "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v1    # "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
    :cond_2
    move-object/from16 v16, v1

    .line 1198
    .end local v1    # "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v16    # "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :goto_2
    if-ne v12, v15, :cond_3

    .line 1162
    .end local v7    # "exc_indice":I
    .end local v8    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .end local v9    # "cname":Ljava/lang/String;
    .end local v10    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v11    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .end local v12    # "e":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v15    # "t":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v16    # "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 1199
    .restart local v7    # "exc_indice":I
    .restart local v8    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .restart local v9    # "cname":Ljava/lang/String;
    .restart local v10    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .restart local v11    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .restart local v12    # "e":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v15    # "t":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v16    # "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_3
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' as an Exception but it is not a subclass of \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1200
    invoke-virtual {v15}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
    throw v1

    .line 1174
    .end local v12    # "e":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v15    # "t":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v16    # "o":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
    :cond_4
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' as an Exception but it does not pass verification pass 1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
    throw v1

    .line 1207
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "exc_indices":[I
    .end local v7    # "exc_indice":I
    .end local v8    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .end local v9    # "cname":Ljava/lang/String;
    .end local v10    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v11    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
    :cond_5
    nop

    .line 1208
    return-void

    .line 1156
    .restart local v0    # "name":Ljava/lang/String;
    :cond_6
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The Exceptions attribute \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1157
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' is not correctly named \'Exceptions\' but \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
    throw v1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1204
    .end local v0    # "name":Ljava/lang/String;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;
    :catch_0
    move-exception v0

    .line 1206
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visitField(Lorg/checkerframework/org/apache/bcel/classfile/Field;)V
    .locals 12
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 532
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->jc:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isClass()Z

    move-result v0

    const-string v1, "Field \'"

    if-eqz v0, :cond_6

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "maxone":I
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    add-int/lit8 v0, v0, 0x1

    .line 537
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->isProtected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    add-int/lit8 v0, v0, 0x1

    .line 540
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 541
    add-int/lit8 v0, v0, 0x1

    .line 543
    :cond_2
    const/4 v2, 0x1

    if-gt v0, v2, :cond_5

    .line 548
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->isFinal()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->isVolatile()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 549
    :cond_3
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' must only have at most one of its ACC_FINAL, ACC_VOLATILE modifiers set."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 552
    .end local v0    # "maxone":I
    :cond_4
    :goto_0
    goto :goto_1

    .line 544
    .restart local v0    # "maxone":I
    :cond_5
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' must only have at most one of its ACC_PRIVATE, ACC_PROTECTED, ACC_PUBLIC modifiers set."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 554
    .end local v0    # "maxone":I
    :cond_6
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->isPublic()Z

    move-result v0

    const-string v2, "Interface field \'"

    if-eqz v0, :cond_10

    .line 558
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 562
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 568
    :goto_1
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0xe0

    if-lez v0, :cond_7

    .line 570
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has access flag(s) other than ACC_PUBLIC, ACC_PRIVATE, ACC_PROTECTED, ACC_STATIC, ACC_FINAL, ACC_VOLATILE, ACC_TRANSIENT set (ignored)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    .line 575
    :cond_7
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getNameIndex()I

    move-result v0

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 577
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$200(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "\'."

    if-eqz v2, :cond_d

    .line 583
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignatureIndex()I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 585
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getSignatureIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "sig":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    :try_end_0
    .catch Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    nop

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "nameanddesc":Ljava/lang/String;
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->field_names_and_desc:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 599
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->field_names:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 600
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "More than one field of name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' detected (but with different type descriptors). This is very unusual."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    .line 603
    :cond_8
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->field_names_and_desc:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->field_names:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v3

    .line 607
    .local v3, "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_b

    aget-object v6, v3, v5

    .line 608
    .local v6, "att":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v7, v6, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    const-string v8, "\' as an attribute of Field \'"

    const-string v9, "Attribute \'"

    if-nez v7, :cond_9

    instance-of v7, v6, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;

    if-nez v7, :cond_9

    instance-of v7, v6, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;

    if-nez v7, :cond_9

    .line 611
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 612
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' is unknown and will therefore be ignored."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 611
    invoke-virtual {v7, v10}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    .line 614
    :cond_9
    instance-of v7, v6, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    if-nez v7, :cond_a

    .line 615
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is not a ConstantValue and is therefore only of use for debuggers and such."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    .line 607
    .end local v6    # "att":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 619
    :cond_b
    return-void

    .line 596
    .end local v3    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_c
    new-instance v3, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No two fields (like \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\') are allowed have same names and descriptors!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 590
    .end local v2    # "nameanddesc":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 591
    .local v2, "cfe":Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal descriptor (==signature) \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' used by \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 579
    .end local v1    # "sig":Ljava/lang/String;
    .end local v2    # "cfe":Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
    :cond_d
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' has illegal name \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 563
    .end local v0    # "name":Ljava/lang/String;
    :cond_e
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must have the ACC_FINAL modifier set but hasn\'t!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_f
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must have the ACC_STATIC modifier set but hasn\'t!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_10
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must have the ACC_PUBLIC modifier set but hasn\'t!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitInnerClass(Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;)V
    .locals 0
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    .line 1273
    return-void
.end method

.method public visitInnerClasses(Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;)V
    .locals 11
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;

    .line 879
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 881
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->getNameIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "name":Ljava/lang/String;
    const-string v1, "InnerClasses"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 887
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;->getInnerClasses()[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;

    move-result-object v1

    .line 889
    .local v1, "ics":[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 890
    .local v4, "ic":Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->getInnerClassIndex()I

    move-result v5

    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    invoke-direct {p0, p1, v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 891
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->getOuterClassIndex()I

    move-result v5

    .line 892
    .local v5, "outer_idx":I
    if-eqz v5, :cond_0

    .line 893
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    invoke-direct {p0, p1, v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 895
    :cond_0
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->getInnerNameIndex()I

    move-result v6

    .line 896
    .local v6, "innername_idx":I
    if-eqz v6, :cond_1

    .line 897
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v6, v7}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 899
    :cond_1
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;->getInnerAccessFlags()I

    move-result v7

    .line 900
    .local v7, "acc":I
    and-int/lit16 v7, v7, -0x620

    .line 902
    if-eqz v7, :cond_2

    .line 903
    iget-object v8, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown access flag for inner class \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 904
    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' set (InnerClasses attribute \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\')."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 903
    invoke-virtual {v8, v9}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    .line 889
    .end local v4    # "ic":Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    .end local v5    # "outer_idx":I
    .end local v6    # "innername_idx":I
    .end local v7    # "acc":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 909
    :cond_3
    return-void

    .line 883
    .end local v1    # "ics":[Lorg/checkerframework/org/apache/bcel/classfile/InnerClass;
    :cond_4
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The InnerClasses attribute \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 884
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not correctly named \'InnerClasses\' but \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public visitJavaClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 11
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 384
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    .line 385
    .local v0, "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    const/4 v1, 0x0

    .line 386
    .local v1, "foundSourceFile":Z
    const/4 v2, 0x0

    .line 390
    .local v2, "foundInnerClasses":Z
    new-instance v3, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$InnerClassDetector;

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->jc:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$InnerClassDetector;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$InnerClassDetector;->innerClassReferenced()Z

    move-result v3

    .line 392
    .local v3, "hasInnerClass":Z
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    const-string v6, "A Classfile structure (like \'"

    if-ge v5, v4, :cond_6

    aget-object v7, v0, v5

    .line 393
    .local v7, "att":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v8, v7, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;

    if-nez v8, :cond_0

    instance-of v8, v7, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;

    if-nez v8, :cond_0

    instance-of v8, v7, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;

    if-nez v8, :cond_0

    instance-of v8, v7, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;

    if-nez v8, :cond_0

    .line 397
    iget-object v8, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attribute \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' as an attribute of the ClassFile structure \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 398
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' is unknown and will therefore be ignored."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 397
    invoke-virtual {v8, v9}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    .line 401
    :cond_0
    instance-of v8, v7, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;

    if-eqz v8, :cond_2

    .line 402
    if-nez v1, :cond_1

    .line 403
    const/4 v1, 0x1

    goto :goto_1

    .line 405
    :cond_1
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A ClassFile structure (like \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 406
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\') may have no more than one SourceFile attribute."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 410
    :cond_2
    :goto_1
    instance-of v8, v7, Lorg/checkerframework/org/apache/bcel/classfile/InnerClasses;

    if-eqz v8, :cond_5

    .line 411
    if-nez v2, :cond_3

    .line 412
    const/4 v2, 0x1

    goto :goto_2

    .line 414
    :cond_3
    if-nez v3, :cond_4

    .line 421
    :goto_2
    if-nez v3, :cond_5

    .line 422
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No referenced Inner Class found, but InnerClasses attribute \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' found. Strongly suggest removal of that attribute."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 415
    :cond_4
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\') must have exactly one InnerClasses attribute if at least one Inner Class is referenced (which is the case). More than one InnerClasses attribute was found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 392
    .end local v7    # "att":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 428
    :cond_6
    if-eqz v3, :cond_7

    if-nez v2, :cond_7

    .line 435
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\') must have exactly one InnerClasses attribute if at least one Inner Class is referenced (which is the case). No InnerClasses attribute was found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    .line 439
    :cond_7
    return-void
.end method

.method public visitLineNumber(Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;)V
    .locals 0
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    .line 1280
    return-void
.end method

.method public visitLineNumberTable(Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;)V
    .locals 4
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    .line 1216
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 1218
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->getNameIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, "name":Ljava/lang/String;
    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1228
    return-void

    .line 1220
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The LineNumberTable attribute \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not correctly named \'LineNumberTable\' but \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public visitLocalVariable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;)V
    .locals 0
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    .line 1254
    return-void
.end method

.method public visitLocalVariableTable(Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;)V
    .locals 0
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    .line 1233
    return-void
.end method

.method public visitMethod(Lorg/checkerframework/org/apache/bcel/classfile/Method;)V
    .locals 18
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 626
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getNameIndex()I

    move-result v0

    iget-object v3, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {v1, v2, v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 628
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, "name":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$300(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "\' has illegal name \'"

    const-string v6, "\'."

    const-string v7, "Method \'"

    if-eqz v4, :cond_28

    .line 634
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignatureIndex()I

    move-result v4

    iget-object v8, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {v1, v2, v4, v8}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 636
    iget-object v4, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignatureIndex()I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-object v8, v4

    check-cast v8, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v4

    .line 641
    .local v4, "sig":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v8

    .line 642
    .local v8, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v9
    :try_end_0
    .catch Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    .local v9, "ts":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    nop

    .line 650
    move-object v10, v8

    .line 651
    .local v10, "act":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v11, v10, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v11, :cond_0

    .line 652
    move-object v11, v10

    check-cast v11, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v10

    .line 654
    :cond_0
    instance-of v11, v10, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v11, :cond_2

    .line 655
    move-object v11, v10

    check-cast v11, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v11

    .line 656
    .local v11, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass1()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v12

    .line 657
    .local v12, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    sget-object v13, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    if-ne v12, v13, :cond_1

    goto :goto_0

    .line 658
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 659
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' has a return type that does not pass verification pass 1: \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    .end local v11    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v12    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :cond_2
    :goto_0
    array-length v11, v9

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_6

    aget-object v14, v9, v13

    .line 664
    .local v14, "element":Lorg/checkerframework/org/apache/bcel/generic/Type;
    move-object v10, v14

    .line 665
    instance-of v15, v10, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v15, :cond_3

    .line 666
    move-object v15, v10

    check-cast v15, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v15}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v10

    .line 668
    :cond_3
    instance-of v15, v10, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v15, :cond_5

    .line 669
    move-object v15, v10

    check-cast v15, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v15}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v15

    .line 670
    .local v15, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v15}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass1()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v12

    .line 671
    .restart local v12    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    if-ne v12, v0, :cond_4

    goto :goto_2

    .line 672
    :cond_4
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 673
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' has an argument type that does not pass verification pass 1: \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    .end local v12    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .end local v14    # "element":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v15    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    :cond_5
    :goto_2
    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x1

    goto :goto_1

    .line 679
    :cond_6
    const-string v0, "<clinit>"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    array-length v11, v9

    if-nez v11, :cond_7

    goto :goto_3

    .line 680
    :cond_7
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 681
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'. Its name resembles the class or interface initialization method which it isn\'t because of its arguments (==descriptor)."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_8
    :goto_3
    iget-object v5, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->jc:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isClass()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "maxone":I
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isPrivate()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 689
    add-int/lit8 v0, v0, 0x1

    .line 691
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isProtected()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 692
    add-int/lit8 v0, v0, 0x1

    .line 694
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isPublic()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 695
    add-int/lit8 v0, v0, 0x1

    .line 697
    :cond_b
    const/4 v5, 0x1

    if-gt v0, v5, :cond_15

    .line 702
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isAbstract()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 703
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isFinal()Z

    move-result v5

    const-string v11, "Abstract method \'"

    if-nez v5, :cond_11

    .line 707
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isNative()Z

    move-result v5

    if-nez v5, :cond_10

    .line 711
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isPrivate()Z

    move-result v5

    if-nez v5, :cond_f

    .line 715
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isStatic()Z

    move-result v5

    if-nez v5, :cond_e

    .line 719
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isStrictfp()Z

    move-result v5

    if-nez v5, :cond_d

    .line 723
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isSynchronized()Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_4

    .line 724
    :cond_c
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 725
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' must not have the ACC_SYNCHRONIZED modifier set."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 720
    :cond_d
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 721
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' must not have the ACC_STRICT modifier set."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 716
    :cond_e
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 717
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' must not have the ACC_STATIC modifier set."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 712
    :cond_f
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 713
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' must not have the ACC_PRIVATE modifier set."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 708
    :cond_10
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 709
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' must not have the ACC_NATIVE modifier set."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 704
    :cond_11
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 705
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' must not have the ACC_FINAL modifier set."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 730
    :cond_12
    :goto_4
    const-string v5, "<init>"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 733
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isStatic()Z

    move-result v5

    if-nez v5, :cond_13

    .line 734
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isFinal()Z

    move-result v5

    if-nez v5, :cond_13

    .line 735
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isSynchronized()Z

    move-result v5

    if-nez v5, :cond_13

    .line 736
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isNative()Z

    move-result v5

    if-nez v5, :cond_13

    .line 737
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isAbstract()Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_5

    .line 738
    :cond_13
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Instance initialization method \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' must not have any of the ACC_STATIC, ACC_FINAL, ACC_SYNCHRONIZED, ACC_NATIVE, ACC_ABSTRACT modifiers set."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 742
    .end local v0    # "maxone":I
    :cond_14
    :goto_5
    goto/16 :goto_6

    .line 698
    .restart local v0    # "maxone":I
    :cond_15
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' must only have at most one of its ACC_PRIVATE, ACC_PROTECTED, ACC_PUBLIC modifiers set."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 744
    .end local v0    # "maxone":I
    :cond_16
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 745
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->jc:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMajor()I

    move-result v0

    const/16 v5, 0x34

    const-string v11, "Interface method \'"

    if-lt v0, v5, :cond_19

    .line 746
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isPublic()Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isPrivate()Z

    move-result v5

    xor-int/2addr v0, v5

    if-eqz v0, :cond_18

    .line 750
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isProtected()Z

    move-result v0

    if-nez v0, :cond_17

    .line 751
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isFinal()Z

    move-result v0

    if-nez v0, :cond_17

    .line 752
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isSynchronized()Z

    move-result v0

    if-nez v0, :cond_17

    .line 753
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isNative()Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_6

    .line 754
    :cond_17
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' must not have any of the ACC_PROTECTED, ACC_FINAL, ACC_SYNCHRONIZED, or ACC_NATIVE modifiers set."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_18
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' must have exactly one of its ACC_PUBLIC and ACC_PRIVATE modifiers set."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 763
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 767
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 768
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isProtected()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 769
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isStatic()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 770
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isFinal()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 771
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isSynchronized()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 772
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isNative()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 773
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isStrictfp()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_6

    .line 774
    :cond_1a
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' must not have any of the ACC_PRIVATE, ACC_PROTECTED, ACC_STATIC, ACC_FINAL, ACC_SYNCHRONIZED, ACC_NATIVE, ACC_ABSTRACT, ACC_STRICT modifiers set."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_1b
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 765
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' must have the ACC_ABSTRACT modifier set but hasn\'t!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_1c
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 761
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' must have the ACC_PUBLIC modifier set but hasn\'t!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_1d
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0xd40

    if-lez v0, :cond_1e

    .line 785
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' has access flag(s) other than ACC_PUBLIC, ACC_PRIVATE, ACC_PROTECTED, ACC_STATIC, ACC_FINAL, ACC_SYNCHRONIZED, ACC_NATIVE, ACC_ABSTRACT, ACC_STRICT set (ignored)."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    .line 790
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "nameanddesc":Ljava/lang/String;
    iget-object v5, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->method_names_and_desc:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 795
    iget-object v5, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->method_names_and_desc:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 797
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v5

    .line 798
    .local v5, "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    const/4 v7, 0x0

    .line 799
    .local v7, "num_code_atts":I
    array-length v11, v5

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_24

    aget-object v13, v5, v12

    .line 800
    .local v13, "att":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v14, v13, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    const-string v15, "\' as an attribute of Method \'"

    move-object/from16 v16, v0

    .end local v0    # "nameanddesc":Ljava/lang/String;
    .local v16, "nameanddesc":Ljava/lang/String;
    const-string v0, "Attribute \'"

    if-nez v14, :cond_1f

    instance-of v14, v13, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    if-nez v14, :cond_1f

    instance-of v14, v13, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;

    if-nez v14, :cond_1f

    instance-of v14, v13, Lorg/checkerframework/org/apache/bcel/classfile/Deprecated;

    if-nez v14, :cond_1f

    .line 804
    iget-object v14, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v17, v5

    .end local v5    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v17, "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-static {v13}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' is unknown and will therefore be ignored."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    goto :goto_8

    .line 800
    .end local v17    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v5    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_1f
    move-object/from16 v17, v5

    .line 807
    .end local v5    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v17    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :goto_8
    instance-of v2, v13, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    if-nez v2, :cond_20

    instance-of v2, v13, Lorg/checkerframework/org/apache/bcel/classfile/ExceptionTable;

    if-nez v2, :cond_20

    .line 809
    iget-object v2, v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v13}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\' is neither Code nor Exceptions and is therefore only of use for debuggers and such."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    .line 812
    :cond_20
    instance-of v0, v13, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    if-eqz v0, :cond_22

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isNative()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_9

    .line 813
    :cond_21
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Native or abstract methods like \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' must not have a Code attribute like \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 814
    invoke-static {v13}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_22
    :goto_9
    instance-of v0, v13, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    if-eqz v0, :cond_23

    .line 817
    add-int/lit8 v7, v7, 0x1

    .line 799
    .end local v13    # "att":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_23
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p1

    move-object/from16 v0, v16

    move-object/from16 v5, v17

    goto/16 :goto_7

    .line 820
    .end local v16    # "nameanddesc":Ljava/lang/String;
    .end local v17    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v0    # "nameanddesc":Ljava/lang/String;
    .restart local v5    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_24
    move-object/from16 v16, v0

    move-object/from16 v17, v5

    .end local v0    # "nameanddesc":Ljava/lang/String;
    .end local v5    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v16    # "nameanddesc":Ljava/lang/String;
    .restart local v17    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isNative()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    if-ne v7, v0, :cond_25

    goto :goto_a

    .line 821
    :cond_25
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-native, non-abstract methods like \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' must have exactly one Code attribute (found: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_26
    :goto_a
    return-void

    .line 792
    .end local v7    # "num_code_atts":I
    .end local v16    # "nameanddesc":Ljava/lang/String;
    .end local v17    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v0    # "nameanddesc":Ljava/lang/String;
    :cond_27
    move-object/from16 v16, v0

    .end local v0    # "nameanddesc":Ljava/lang/String;
    .restart local v16    # "nameanddesc":Ljava/lang/String;
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No two methods (like \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 793
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\') are allowed have same names and desciptors!"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    .end local v8    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v9    # "ts":[Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v10    # "act":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v16    # "nameanddesc":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 645
    .local v0, "cfe":Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal descriptor (==signature) \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' used by Method \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 646
    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 630
    .end local v0    # "cfe":Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
    .end local v4    # "sig":Ljava/lang/String;
    :cond_28
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitSourceFile(Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;)V
    .locals 6
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;

    .line 833
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 835
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->getNameIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "name":Ljava/lang/String;
    const-string v1, "SourceFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 841
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->getSourceFileIndex()I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 843
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;->getSourceFileIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, "sourcefilename":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, "sourcefilenamelc":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 847
    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 848
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 849
    const-string v3, ".java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 850
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SourceFile attribute \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' has a funny name: remember not to confuse certain parsers working on javap\'s output. Also, this name (\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\') is considered an unqualified (simple) file name only."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    .line 854
    :cond_1
    return-void

    .line 837
    .end local v1    # "sourcefilename":Ljava/lang/String;
    .end local v2    # "sourcefilenamelc":Ljava/lang/String;
    :cond_2
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The SourceFile attribute \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 838
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not correctly named \'SourceFile\' but \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public visitSynthetic(Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;)V
    .locals 4
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;

    .line 867
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 868
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Synthetic;->getNameIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, "name":Ljava/lang/String;
    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    return-void

    .line 870
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Synthetic attribute \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 871
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not correctly named \'Synthetic\' but \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public visitUnknown(Lorg/checkerframework/org/apache/bcel/classfile/Unknown;)V
    .locals 3
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/Unknown;

    .line 1240
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Unknown;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lorg/checkerframework/org/apache/bcel/classfile/Node;ILjava/lang/Class;)V

    .line 1243
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. This attribute is not known in any context!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    .line 1244
    return-void
.end method
