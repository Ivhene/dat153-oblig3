.class final Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;
.super Lorg/checkerframework/org/apache/bcel/classfile/EmptyVisitor;
.source "Pass2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FAMRAV_Visitor"
.end annotation


# instance fields
.field private final cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

.field final synthetic this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 0
    .param p2, "_jc"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 1320
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/EmptyVisitor;-><init>()V

    .line 1321
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object p1

    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 1322
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;
    .param p2, "x1"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .param p3, "x2"    # Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$1;

    .line 1318
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V

    return-void
.end method


# virtual methods
.method public visitConstantFieldref(Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;)V
    .locals 13
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;

    .line 1326
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;->getTag()B

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 1329
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;->getNameAndTypeIndex()I

    move-result v0

    .line 1330
    .local v0, "name_and_type_index":I
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 1331
    .local v1, "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-object v3, v2

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    .line 1332
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$200(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "\'."

    if-eqz v3, :cond_1

    .line 1336
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;->getClassIndex()I

    move-result v3

    .line 1337
    .local v3, "class_index":I
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v5, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 1338
    .local v5, "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-object v7, v6

    check-cast v7, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v6

    .line 1339
    .local v6, "className":Ljava/lang/String;
    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$800(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "\' used by \'"

    if-eqz v7, :cond_0

    .line 1343
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-object v9, v7

    check-cast v9, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v7

    .line 1346
    .local v7, "sig":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    :try_end_0
    .catch Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    nop

    .line 1351
    return-void

    .line 1348
    :catch_0
    move-exception v9

    .line 1349
    .local v9, "cfe":Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
    new-instance v10, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Illegal descriptor (==signature) \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4, v9}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 1340
    .end local v7    # "sig":Ljava/lang/String;
    .end local v9    # "cfe":Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
    :cond_0
    new-instance v7, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal class name \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1333
    .end local v3    # "class_index":I
    .end local v5    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .end local v6    # "className":Ljava/lang/String;
    :cond_1
    new-instance v3, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid field name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' referenced by \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1327
    .end local v0    # "name_and_type_index":I
    .end local v1    # "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConstantFieldref \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has wrong tag!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitConstantInterfaceMethodref(Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;)V
    .locals 13
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;

    .line 1388
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;->getTag()B

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 1391
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;->getNameAndTypeIndex()I

    move-result v0

    .line 1392
    .local v0, "name_and_type_index":I
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 1393
    .local v1, "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-object v3, v2

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    .line 1394
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$1000(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "\'."

    if-eqz v3, :cond_2

    .line 1398
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;->getClassIndex()I

    move-result v3

    .line 1399
    .local v3, "class_index":I
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v5, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 1400
    .local v5, "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-object v7, v6

    check-cast v7, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v6

    .line 1401
    .local v6, "className":Ljava/lang/String;
    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$800(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "\' used by \'"

    if-eqz v7, :cond_1

    .line 1405
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-object v9, v7

    check-cast v9, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v7

    .line 1408
    .local v7, "sig":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v9

    .line 1409
    .local v9, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    const-string v10, "<clinit>"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Lorg/checkerframework/org/apache/bcel/generic/Type;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eq v9, v10, :cond_0

    .line 1410
    iget-object v10, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Class or interface initialization method \'<clinit>\' usually has VOID return type instead of \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'. Note this is really not a requirement of The Java Virtual Machine Specification, Second Edition."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    .end local v9    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_0
    nop

    .line 1419
    return-void

    .line 1415
    :catch_0
    move-exception v9

    .line 1416
    .local v9, "cfe":Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
    new-instance v10, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Illegal descriptor (==signature) \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4, v9}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 1402
    .end local v7    # "sig":Ljava/lang/String;
    .end local v9    # "cfe":Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
    :cond_1
    new-instance v7, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal class name \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1395
    .end local v3    # "class_index":I
    .end local v5    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .end local v6    # "className":Ljava/lang/String;
    :cond_2
    new-instance v3, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid (interface) method name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' referenced by \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1389
    .end local v0    # "name_and_type_index":I
    .end local v1    # "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConstantInterfaceMethodref \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has wrong tag!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitConstantMethodref(Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;)V
    .locals 13
    .param p1, "obj"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;

    .line 1355
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;->getTag()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1358
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;->getNameAndTypeIndex()I

    move-result v0

    .line 1359
    .local v0, "name_and_type_index":I
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 1360
    .local v1, "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-object v3, v2

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    .line 1361
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$900(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "\'."

    if-eqz v3, :cond_3

    .line 1366
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;->getClassIndex()I

    move-result v3

    .line 1367
    .local v3, "class_index":I
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v5, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 1368
    .local v5, "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-object v7, v6

    check-cast v7, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v6

    .line 1369
    .local v6, "className":Ljava/lang/String;
    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$800(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "\' used by \'"

    if-eqz v7, :cond_2

    .line 1373
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-object v9, v7

    check-cast v9, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v7

    .line 1376
    .local v7, "sig":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v9

    .line 1377
    .local v9, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    const-string v10, "<init>"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lorg/checkerframework/org/apache/bcel/generic/Type;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-ne v9, v10, :cond_0

    goto :goto_0

    .line 1378
    :cond_0
    new-instance v10, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    const-string v11, "Instance initialization method must have VOID return type."

    invoke-direct {v10, v11}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name_and_type_index":I
    .end local v1    # "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "class_index":I
    .end local v5    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "sig":Ljava/lang/String;
    .end local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;
    throw v10
    :try_end_0
    .catch Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1383
    .end local v9    # "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .restart local v0    # "name_and_type_index":I
    .restart local v1    # "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "class_index":I
    .restart local v5    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .restart local v6    # "className":Ljava/lang/String;
    .restart local v7    # "sig":Ljava/lang/String;
    .restart local p1    # "obj":Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;
    :cond_1
    :goto_0
    nop

    .line 1384
    return-void

    .line 1381
    :catch_0
    move-exception v9

    .line 1382
    .local v9, "cfe":Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
    new-instance v10, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Illegal descriptor (==signature) \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4, v9}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 1370
    .end local v7    # "sig":Ljava/lang/String;
    .end local v9    # "cfe":Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
    :cond_2
    new-instance v7, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal class name \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1362
    .end local v3    # "class_index":I
    .end local v5    # "cc":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .end local v6    # "className":Ljava/lang/String;
    :cond_3
    new-instance v3, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid (non-interface) method name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' referenced by \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1363
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1356
    .end local v0    # "name_and_type_index":I
    .end local v1    # "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConstantMethodref \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has wrong tag!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
