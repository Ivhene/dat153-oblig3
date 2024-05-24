.class public Lnet/bytebuddy/jar/asm/ClassWriter;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "ClassWriter.java"


# static fields
.field public static final COMPUTE_FRAMES:I = 0x2

.field public static final COMPUTE_MAXS:I = 0x1


# instance fields
.field private accessFlags:I

.field private compute:I

.field private debugExtension:Lnet/bytebuddy/jar/asm/ByteVector;

.field private enclosingClassIndex:I

.field private enclosingMethodIndex:I

.field private firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

.field private firstField:Lnet/bytebuddy/jar/asm/FieldWriter;

.field private firstMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

.field private firstRecordComponent:Lnet/bytebuddy/jar/asm/RecordComponentWriter;

.field private innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

.field private interfaceCount:I

.field private interfaces:[I

.field private lastField:Lnet/bytebuddy/jar/asm/FieldWriter;

.field private lastMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

.field private lastRecordComponent:Lnet/bytebuddy/jar/asm/RecordComponentWriter;

.field private lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private moduleWriter:Lnet/bytebuddy/jar/asm/ModuleWriter;

.field private nestHostClassIndex:I

.field private nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

.field private numberOfInnerClasses:I

.field private numberOfNestMemberClasses:I

.field private numberOfPermittedSubclasses:I

.field private permittedSubclasses:Lnet/bytebuddy/jar/asm/ByteVector;

.field private signatureIndex:I

.field private sourceFileIndex:I

.field private superClass:I

.field private final symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

.field private thisClass:I

.field private version:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/ClassWriter;-><init>(Lnet/bytebuddy/jar/asm/ClassReader;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/ClassReader;I)V
    .locals 1
    .param p1, "classReader"    # Lnet/bytebuddy/jar/asm/ClassReader;
    .param p2, "flags"    # I

    .line 257
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(I)V

    .line 258
    new-instance v0, Lnet/bytebuddy/jar/asm/SymbolTable;

    if-nez p1, :cond_0

    invoke-direct {v0, p0}, Lnet/bytebuddy/jar/asm/SymbolTable;-><init>(Lnet/bytebuddy/jar/asm/ClassWriter;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;-><init>(Lnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/ClassReader;)V

    :goto_0
    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 259
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 260
    const/4 v0, 0x4

    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->compute:I

    goto :goto_1

    .line 261
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 262
    const/4 v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->compute:I

    goto :goto_1

    .line 264
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->compute:I

    .line 266
    :goto_1
    return-void
.end method

.method private getAttributePrototypes()[Lnet/bytebuddy/jar/asm/Attribute;
    .locals 5

    .line 768
    new-instance v0, Lnet/bytebuddy/jar/asm/Attribute$Set;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;-><init>()V

    .line 769
    .local v0, "attributePrototypes":Lnet/bytebuddy/jar/asm/Attribute$Set;
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/Attribute$Set;->addAttributes(Lnet/bytebuddy/jar/asm/Attribute;)V

    .line 770
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstField:Lnet/bytebuddy/jar/asm/FieldWriter;

    .line 771
    .local v1, "fieldWriter":Lnet/bytebuddy/jar/asm/FieldWriter;
    :goto_0
    if-eqz v1, :cond_0

    .line 772
    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/FieldWriter;->collectAttributePrototypes(Lnet/bytebuddy/jar/asm/Attribute$Set;)V

    .line 773
    iget-object v2, v1, Lnet/bytebuddy/jar/asm/FieldWriter;->fv:Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-object v1, v2

    check-cast v1, Lnet/bytebuddy/jar/asm/FieldWriter;

    goto :goto_0

    .line 775
    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    .line 776
    .local v2, "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    :goto_1
    if-eqz v2, :cond_1

    .line 777
    invoke-virtual {v2, v0}, Lnet/bytebuddy/jar/asm/MethodWriter;->collectAttributePrototypes(Lnet/bytebuddy/jar/asm/Attribute$Set;)V

    .line 778
    iget-object v3, v2, Lnet/bytebuddy/jar/asm/MethodWriter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-object v2, v3

    check-cast v2, Lnet/bytebuddy/jar/asm/MethodWriter;

    goto :goto_1

    .line 780
    :cond_1
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstRecordComponent:Lnet/bytebuddy/jar/asm/RecordComponentWriter;

    .line 781
    .local v3, "recordComponentWriter":Lnet/bytebuddy/jar/asm/RecordComponentWriter;
    :goto_2
    if-eqz v3, :cond_2

    .line 782
    invoke-virtual {v3, v0}, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->collectAttributePrototypes(Lnet/bytebuddy/jar/asm/Attribute$Set;)V

    .line 783
    iget-object v4, v3, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->delegate:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    move-object v3, v4

    check-cast v3, Lnet/bytebuddy/jar/asm/RecordComponentWriter;

    goto :goto_2

    .line 785
    :cond_2
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;->toArray()[Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v4

    return-object v4
.end method

.method private replaceAsmInstructions([BZ)[B
    .locals 3
    .param p1, "classFile"    # [B
    .param p2, "hasFrames"    # Z

    .line 735
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/ClassWriter;->getAttributePrototypes()[Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v0

    .line 736
    .local v0, "attributes":[Lnet/bytebuddy/jar/asm/Attribute;
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstField:Lnet/bytebuddy/jar/asm/FieldWriter;

    .line 737
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastField:Lnet/bytebuddy/jar/asm/FieldWriter;

    .line 738
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    .line 739
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    .line 740
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 741
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 742
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 743
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 744
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->moduleWriter:Lnet/bytebuddy/jar/asm/ModuleWriter;

    .line 745
    const/4 v2, 0x0

    iput v2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestHostClassIndex:I

    .line 746
    iput v2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfNestMemberClasses:I

    .line 747
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 748
    iput v2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfPermittedSubclasses:I

    .line 749
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->permittedSubclasses:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 750
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstRecordComponent:Lnet/bytebuddy/jar/asm/RecordComponentWriter;

    .line 751
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRecordComponent:Lnet/bytebuddy/jar/asm/RecordComponentWriter;

    .line 752
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 753
    if-eqz p2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->compute:I

    .line 754
    new-instance v1, Lnet/bytebuddy/jar/asm/ClassReader;

    invoke-direct {v1, p1, v2, v2}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([BIZ)V

    .line 758
    if-eqz p2, :cond_1

    const/16 v2, 0x8

    :cond_1
    or-int/lit16 v2, v2, 0x100

    .line 755
    invoke-virtual {v1, p0, v0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->accept(Lnet/bytebuddy/jar/asm/ClassVisitor;[Lnet/bytebuddy/jar/asm/Attribute;I)V

    .line 759
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/ClassWriter;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1051
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "type1"    # Ljava/lang/String;
    .param p2, "type2"    # Ljava/lang/String;

    .line 1014
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/ClassWriter;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1017
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1020
    .local v3, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 1023
    :try_start_1
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1026
    .local v4, "class2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 1027
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1028
    return-object p1

    .line 1030
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1031
    return-object p2

    .line 1033
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 1037
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 1038
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1039
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1034
    :cond_3
    :goto_0
    const-string v1, "java/lang/Object"

    return-object v1

    .line 1024
    .end local v4    # "class2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 1025
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/TypeNotPresentException;

    invoke-direct {v2, p2, v1}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1018
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 1019
    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/TypeNotPresentException;

    invoke-direct {v2, p1, v1}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public newClass(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 827
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return v0
.end method

.method public newConst(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 802
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return v0
.end method

.method public varargs newConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "bootstrapMethodHandle"    # Lnet/bytebuddy/jar/asm/Handle;
    .param p4, "bootstrapMethodArguments"    # [Ljava/lang/Object;

    .line 928
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return v0
.end method

.method public newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;

    .line 965
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return v0
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 885
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/ClassWriter;->newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "isInterface"    # Z

    .line 909
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMethodHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return v0
.end method

.method public varargs newInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "bootstrapMethodHandle"    # Lnet/bytebuddy/jar/asm/Handle;
    .param p4, "bootstrapMethodArguments"    # [Ljava/lang/Object;

    .line 949
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return v0
.end method

.method public newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "isInterface"    # Z

    .line 981
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return v0
.end method

.method public newMethodType(Ljava/lang/String;)I
    .locals 1
    .param p1, "methodDescriptor"    # Ljava/lang/String;

    .line 839
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return v0
.end method

.method public newModule(Ljava/lang/String;)I
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 851
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return v0
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 994
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public newPackage(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 863
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantPackage(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return v0
.end method

.method public newUTF8(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 815
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 37

    .line 477
    move-object/from16 v0, p0

    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaceCount:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    .line 478
    .local v1, "size":I
    const/4 v3, 0x0

    .line 479
    .local v3, "fieldsCount":I
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstField:Lnet/bytebuddy/jar/asm/FieldWriter;

    .line 480
    .local v4, "fieldWriter":Lnet/bytebuddy/jar/asm/FieldWriter;
    :goto_0
    if-eqz v4, :cond_0

    .line 481
    add-int/lit8 v3, v3, 0x1

    .line 482
    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/FieldWriter;->computeFieldInfoSize()I

    move-result v5

    add-int/2addr v1, v5

    .line 483
    iget-object v5, v4, Lnet/bytebuddy/jar/asm/FieldWriter;->fv:Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-object v4, v5

    check-cast v4, Lnet/bytebuddy/jar/asm/FieldWriter;

    goto :goto_0

    .line 485
    :cond_0
    const/4 v5, 0x0

    .line 486
    .local v5, "methodsCount":I
    iget-object v6, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    .line 487
    .local v6, "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    :goto_1
    if-eqz v6, :cond_1

    .line 488
    add-int/lit8 v5, v5, 0x1

    .line 489
    invoke-virtual {v6}, Lnet/bytebuddy/jar/asm/MethodWriter;->computeMethodInfoSize()I

    move-result v7

    add-int/2addr v1, v7

    .line 490
    iget-object v7, v6, Lnet/bytebuddy/jar/asm/MethodWriter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-object v6, v7

    check-cast v6, Lnet/bytebuddy/jar/asm/MethodWriter;

    goto :goto_1

    .line 494
    :cond_1
    const/4 v7, 0x0

    .line 495
    .local v7, "attributesCount":I
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    const-string v9, "InnerClasses"

    if-eqz v8, :cond_2

    .line 496
    add-int/lit8 v7, v7, 0x1

    .line 497
    iget v8, v8, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v8, v8, 0x8

    add-int/2addr v1, v8

    .line 498
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v8, v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 500
    :cond_2
    iget v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->enclosingClassIndex:I

    const-string v10, "EnclosingMethod"

    if-eqz v8, :cond_3

    .line 501
    add-int/lit8 v7, v7, 0x1

    .line 502
    add-int/lit8 v1, v1, 0xa

    .line 503
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v8, v10}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 505
    :cond_3
    iget v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->accessFlags:I

    const/16 v11, 0x1000

    and-int/2addr v8, v11

    const-string v12, "Synthetic"

    const/16 v13, 0x31

    const v14, 0xffff

    if-eqz v8, :cond_4

    iget v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->version:I

    and-int/2addr v8, v14

    if-ge v8, v13, :cond_4

    .line 506
    add-int/lit8 v7, v7, 0x1

    .line 507
    add-int/lit8 v1, v1, 0x6

    .line 508
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v8, v12}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 510
    :cond_4
    iget v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->signatureIndex:I

    const-string v15, "Signature"

    if-eqz v8, :cond_5

    .line 511
    add-int/lit8 v7, v7, 0x1

    .line 512
    add-int/lit8 v1, v1, 0x8

    .line 513
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v8, v15}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 515
    :cond_5
    iget v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->sourceFileIndex:I

    const-string v11, "SourceFile"

    if-eqz v8, :cond_6

    .line 516
    add-int/lit8 v7, v7, 0x1

    .line 517
    add-int/lit8 v1, v1, 0x8

    .line 518
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v8, v11}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 520
    :cond_6
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->debugExtension:Lnet/bytebuddy/jar/asm/ByteVector;

    const-string v2, "SourceDebugExtension"

    if-eqz v8, :cond_7

    .line 521
    add-int/lit8 v7, v7, 0x1

    .line 522
    iget v8, v8, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v8, v8, 0x6

    add-int/2addr v1, v8

    .line 523
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 525
    :cond_7
    iget v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->accessFlags:I

    const/high16 v17, 0x20000

    and-int v8, v8, v17

    const-string v13, "Deprecated"

    if-eqz v8, :cond_8

    .line 526
    add-int/lit8 v7, v7, 0x1

    .line 527
    add-int/lit8 v1, v1, 0x6

    .line 528
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v8, v13}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 530
    :cond_8
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v8, :cond_9

    .line 531
    add-int/lit8 v7, v7, 0x1

    .line 532
    nop

    .line 533
    const-string v14, "RuntimeVisibleAnnotations"

    invoke-virtual {v8, v14}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v1, v8

    .line 536
    :cond_9
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v8, :cond_a

    .line 537
    add-int/lit8 v7, v7, 0x1

    .line 538
    nop

    .line 539
    const-string v14, "RuntimeInvisibleAnnotations"

    invoke-virtual {v8, v14}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v1, v8

    .line 542
    :cond_a
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v8, :cond_b

    .line 543
    add-int/lit8 v7, v7, 0x1

    .line 544
    nop

    .line 545
    const-string v14, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v8, v14}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v1, v8

    .line 548
    :cond_b
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v8, :cond_c

    .line 549
    add-int/lit8 v7, v7, 0x1

    .line 550
    nop

    .line 551
    const-string v14, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v8, v14}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v1, v8

    .line 554
    :cond_c
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->computeBootstrapMethodsSize()I

    move-result v8

    if-lez v8, :cond_d

    .line 555
    add-int/lit8 v7, v7, 0x1

    .line 556
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->computeBootstrapMethodsSize()I

    move-result v8

    add-int/2addr v1, v8

    .line 558
    :cond_d
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->moduleWriter:Lnet/bytebuddy/jar/asm/ModuleWriter;

    if-eqz v8, :cond_e

    .line 559
    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/ModuleWriter;->getAttributeCount()I

    move-result v8

    add-int/2addr v7, v8

    .line 560
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->moduleWriter:Lnet/bytebuddy/jar/asm/ModuleWriter;

    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/ModuleWriter;->computeAttributesSize()I

    move-result v8

    add-int/2addr v1, v8

    .line 562
    :cond_e
    iget v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestHostClassIndex:I

    const-string v14, "NestHost"

    if-eqz v8, :cond_f

    .line 563
    add-int/lit8 v7, v7, 0x1

    .line 564
    add-int/lit8 v1, v1, 0x8

    .line 565
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v8, v14}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 567
    :cond_f
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    move-object/from16 v18, v4

    .end local v4    # "fieldWriter":Lnet/bytebuddy/jar/asm/FieldWriter;
    .local v18, "fieldWriter":Lnet/bytebuddy/jar/asm/FieldWriter;
    const-string v4, "NestMembers"

    if-eqz v8, :cond_10

    .line 568
    add-int/lit8 v7, v7, 0x1

    .line 569
    iget v8, v8, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v8, v8, 0x8

    add-int/2addr v1, v8

    .line 570
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 572
    :cond_10
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->permittedSubclasses:Lnet/bytebuddy/jar/asm/ByteVector;

    move-object/from16 v19, v6

    .end local v6    # "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    .local v19, "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    const-string v6, "PermittedSubclasses"

    if-eqz v8, :cond_11

    .line 573
    add-int/lit8 v7, v7, 0x1

    .line 574
    iget v8, v8, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v8, v8, 0x8

    add-int/2addr v1, v8

    .line 575
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 577
    :cond_11
    const/4 v8, 0x0

    .line 578
    .local v8, "recordComponentCount":I
    const/16 v20, 0x0

    .line 579
    .local v20, "recordSize":I
    move/from16 v21, v8

    .end local v8    # "recordComponentCount":I
    .local v21, "recordComponentCount":I
    iget v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->accessFlags:I

    const/high16 v22, 0x10000

    and-int v8, v8, v22

    move-object/from16 v23, v6

    const-string v6, "Record"

    if-nez v8, :cond_13

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstRecordComponent:Lnet/bytebuddy/jar/asm/RecordComponentWriter;

    if-eqz v8, :cond_12

    goto :goto_2

    :cond_12
    move-object/from16 v24, v4

    move/from16 v8, v21

    goto :goto_4

    .line 580
    :cond_13
    :goto_2
    iget-object v8, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstRecordComponent:Lnet/bytebuddy/jar/asm/RecordComponentWriter;

    .line 581
    .local v8, "recordComponentWriter":Lnet/bytebuddy/jar/asm/RecordComponentWriter;
    :goto_3
    if-eqz v8, :cond_14

    .line 582
    add-int/lit8 v21, v21, 0x1

    .line 583
    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->computeRecordComponentInfoSize()I

    move-result v24

    add-int v20, v20, v24

    .line 584
    move-object/from16 v24, v4

    iget-object v4, v8, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->delegate:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    move-object v8, v4

    check-cast v8, Lnet/bytebuddy/jar/asm/RecordComponentWriter;

    move-object/from16 v4, v24

    goto :goto_3

    .line 586
    :cond_14
    move-object/from16 v24, v4

    add-int/lit8 v7, v7, 0x1

    .line 587
    add-int/lit8 v4, v20, 0x8

    add-int/2addr v1, v4

    .line 588
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v4, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move/from16 v8, v21

    .line 590
    .end local v21    # "recordComponentCount":I
    .local v8, "recordComponentCount":I
    :goto_4
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v4, :cond_15

    .line 591
    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/Attribute;->getAttributeCount()I

    move-result v4

    add-int/2addr v7, v4

    .line 592
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    move/from16 v21, v7

    .end local v7    # "attributesCount":I
    .local v21, "attributesCount":I
    iget-object v7, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v4, v7}, Lnet/bytebuddy/jar/asm/Attribute;->computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;)I

    move-result v4

    add-int/2addr v1, v4

    move/from16 v7, v21

    .line 596
    .end local v21    # "attributesCount":I
    .restart local v7    # "attributesCount":I
    :cond_15
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->getConstantPoolLength()I

    move-result v4

    add-int/2addr v1, v4

    .line 597
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->getConstantPoolCount()I

    move-result v4

    .line 598
    .local v4, "constantPoolCount":I
    move/from16 v21, v8

    const v8, 0xffff

    .end local v8    # "recordComponentCount":I
    .local v21, "recordComponentCount":I
    if-gt v4, v8, :cond_2a

    .line 604
    new-instance v8, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>(I)V

    .line 605
    .local v8, "result":Lnet/bytebuddy/jar/asm/ByteVector;
    move/from16 v31, v1

    .end local v1    # "size":I
    .local v31, "size":I
    const v1, -0x35014542    # -8346975.0f

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    move/from16 v32, v4

    .end local v4    # "constantPoolCount":I
    .local v32, "constantPoolCount":I
    iget v4, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->version:I

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 606
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->putConstantPool(Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 607
    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->version:I

    const v4, 0xffff

    and-int/2addr v1, v4

    const/16 v4, 0x31

    if-ge v1, v4, :cond_16

    const/16 v1, 0x1000

    goto :goto_5

    :cond_16
    const/4 v1, 0x0

    .line 608
    .local v1, "mask":I
    :goto_5
    iget v4, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->accessFlags:I

    move-object/from16 v33, v6

    not-int v6, v1

    and-int/2addr v4, v6

    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v4

    iget v6, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->thisClass:I

    invoke-virtual {v4, v6}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v4

    iget v6, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->superClass:I

    invoke-virtual {v4, v6}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 609
    iget v4, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaceCount:I

    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 610
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    iget v6, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaceCount:I

    if-ge v4, v6, :cond_17

    .line 611
    iget-object v6, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaces:[I

    aget v6, v6, v4

    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 610
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 613
    .end local v4    # "i":I
    :cond_17
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 614
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstField:Lnet/bytebuddy/jar/asm/FieldWriter;

    .line 615
    .end local v18    # "fieldWriter":Lnet/bytebuddy/jar/asm/FieldWriter;
    .local v4, "fieldWriter":Lnet/bytebuddy/jar/asm/FieldWriter;
    :goto_7
    if-eqz v4, :cond_18

    .line 616
    invoke-virtual {v4, v8}, Lnet/bytebuddy/jar/asm/FieldWriter;->putFieldInfo(Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 617
    iget-object v6, v4, Lnet/bytebuddy/jar/asm/FieldWriter;->fv:Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-object v4, v6

    check-cast v4, Lnet/bytebuddy/jar/asm/FieldWriter;

    goto :goto_7

    .line 619
    :cond_18
    invoke-virtual {v8, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 620
    const/4 v6, 0x0

    .line 621
    .local v6, "hasFrames":Z
    const/16 v18, 0x0

    .line 622
    .local v18, "hasAsmInstructions":Z
    move/from16 v34, v1

    .end local v1    # "mask":I
    .local v34, "mask":I
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    .line 623
    .end local v19    # "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    .local v1, "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    :goto_8
    if-eqz v1, :cond_19

    .line 624
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->hasFrames()Z

    move-result v19

    or-int v6, v6, v19

    .line 625
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->hasAsmInstructions()Z

    move-result v19

    or-int v18, v18, v19

    .line 626
    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/MethodWriter;->putMethodInfo(Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 627
    move/from16 v35, v3

    .end local v3    # "fieldsCount":I
    .local v35, "fieldsCount":I
    iget-object v3, v1, Lnet/bytebuddy/jar/asm/MethodWriter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-object v1, v3

    check-cast v1, Lnet/bytebuddy/jar/asm/MethodWriter;

    move/from16 v3, v35

    goto :goto_8

    .line 630
    .end local v35    # "fieldsCount":I
    .restart local v3    # "fieldsCount":I
    :cond_19
    move/from16 v35, v3

    .end local v3    # "fieldsCount":I
    .restart local v35    # "fieldsCount":I
    invoke-virtual {v8, v7}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 631
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v3, :cond_1a

    .line 632
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 633
    invoke-virtual {v3, v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    iget-object v9, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v9, v9, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const/16 v16, 0x2

    add-int/lit8 v9, v9, 0x2

    .line 634
    invoke-virtual {v3, v9}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    iget v9, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfInnerClasses:I

    .line 635
    invoke-virtual {v3, v9}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    iget-object v9, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v9, v9, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    move-object/from16 v19, v1

    .end local v1    # "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    .restart local v19    # "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 636
    move-object/from16 v36, v4

    const/4 v4, 0x0

    .end local v4    # "fieldWriter":Lnet/bytebuddy/jar/asm/FieldWriter;
    .local v36, "fieldWriter":Lnet/bytebuddy/jar/asm/FieldWriter;
    invoke-virtual {v3, v9, v4, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_9

    .line 631
    .end local v19    # "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    .end local v36    # "fieldWriter":Lnet/bytebuddy/jar/asm/FieldWriter;
    .restart local v1    # "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    .restart local v4    # "fieldWriter":Lnet/bytebuddy/jar/asm/FieldWriter;
    :cond_1a
    move-object/from16 v19, v1

    move-object/from16 v36, v4

    .line 638
    .end local v1    # "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    .end local v4    # "fieldWriter":Lnet/bytebuddy/jar/asm/FieldWriter;
    .restart local v19    # "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    .restart local v36    # "fieldWriter":Lnet/bytebuddy/jar/asm/FieldWriter;
    :goto_9
    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->enclosingClassIndex:I

    if-eqz v1, :cond_1b

    .line 639
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 640
    invoke-virtual {v1, v10}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 641
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->enclosingClassIndex:I

    .line 642
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->enclosingMethodIndex:I

    .line 643
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 645
    :cond_1b
    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->accessFlags:I

    const/16 v3, 0x1000

    and-int/2addr v1, v3

    if-eqz v1, :cond_1c

    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->version:I

    const v3, 0xffff

    and-int/2addr v1, v3

    const/16 v3, 0x31

    if-ge v1, v3, :cond_1c

    .line 646
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, v12}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 648
    :cond_1c
    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->signatureIndex:I

    if-eqz v1, :cond_1d

    .line 649
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 650
    invoke-virtual {v1, v15}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 651
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->signatureIndex:I

    .line 652
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 654
    :cond_1d
    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->sourceFileIndex:I

    if-eqz v1, :cond_1e

    .line 655
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 656
    invoke-virtual {v1, v11}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 657
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->sourceFileIndex:I

    .line 658
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 660
    :cond_1e
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->debugExtension:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_1f

    .line 661
    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 662
    .local v1, "length":I
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 663
    invoke-virtual {v3, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    .line 664
    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->debugExtension:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    .line 665
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 667
    .end local v1    # "length":I
    :cond_1f
    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->accessFlags:I

    and-int v1, v1, v17

    if-eqz v1, :cond_20

    .line 668
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, v13}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 670
    :cond_20
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v9, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v9

    move-object/from16 v30, v8

    invoke-static/range {v25 .. v30}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 677
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->putBootstrapMethods(Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 678
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->moduleWriter:Lnet/bytebuddy/jar/asm/ModuleWriter;

    if-eqz v1, :cond_21

    .line 679
    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/ModuleWriter;->putAttributes(Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 681
    :cond_21
    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestHostClassIndex:I

    if-eqz v1, :cond_22

    .line 682
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 683
    invoke-virtual {v1, v14}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 684
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestHostClassIndex:I

    .line 685
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 687
    :cond_22
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_23

    .line 688
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 689
    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    .line 690
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfNestMemberClasses:I

    .line 691
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 692
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 694
    :cond_23
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->permittedSubclasses:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_24

    .line 695
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 696
    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->permittedSubclasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    .line 697
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfPermittedSubclasses:I

    .line 698
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->permittedSubclasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->permittedSubclasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 699
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 701
    :cond_24
    iget v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->accessFlags:I

    and-int v1, v1, v22

    if-nez v1, :cond_26

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstRecordComponent:Lnet/bytebuddy/jar/asm/RecordComponentWriter;

    if-eqz v1, :cond_25

    goto :goto_a

    :cond_25
    move/from16 v2, v21

    goto :goto_c

    .line 702
    :cond_26
    :goto_a
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 703
    move-object/from16 v2, v33

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    add-int/lit8 v2, v20, 0x2

    .line 704
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 705
    move/from16 v2, v21

    .end local v21    # "recordComponentCount":I
    .local v2, "recordComponentCount":I
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 706
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstRecordComponent:Lnet/bytebuddy/jar/asm/RecordComponentWriter;

    .line 707
    .local v1, "recordComponentWriter":Lnet/bytebuddy/jar/asm/RecordComponentWriter;
    :goto_b
    if-eqz v1, :cond_27

    .line 708
    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->putRecordComponentInfo(Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 709
    iget-object v3, v1, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->delegate:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    move-object v1, v3

    check-cast v1, Lnet/bytebuddy/jar/asm/RecordComponentWriter;

    goto :goto_b

    .line 712
    .end local v1    # "recordComponentWriter":Lnet/bytebuddy/jar/asm/RecordComponentWriter;
    :cond_27
    :goto_c
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_28

    .line 713
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, v3, v8}, Lnet/bytebuddy/jar/asm/Attribute;->putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 717
    :cond_28
    if-eqz v18, :cond_29

    .line 718
    iget-object v1, v8, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    invoke-direct {v0, v1, v6}, Lnet/bytebuddy/jar/asm/ClassWriter;->replaceAsmInstructions([BZ)[B

    move-result-object v1

    return-object v1

    .line 720
    :cond_29
    iget-object v1, v8, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    return-object v1

    .line 599
    .end local v2    # "recordComponentCount":I
    .end local v6    # "hasFrames":Z
    .end local v8    # "result":Lnet/bytebuddy/jar/asm/ByteVector;
    .end local v31    # "size":I
    .end local v32    # "constantPoolCount":I
    .end local v34    # "mask":I
    .end local v35    # "fieldsCount":I
    .end local v36    # "fieldWriter":Lnet/bytebuddy/jar/asm/FieldWriter;
    .local v1, "size":I
    .restart local v3    # "fieldsCount":I
    .local v4, "constantPoolCount":I
    .local v18, "fieldWriter":Lnet/bytebuddy/jar/asm/FieldWriter;
    .restart local v21    # "recordComponentCount":I
    :cond_2a
    move/from16 v31, v1

    move/from16 v35, v3

    .end local v1    # "size":I
    .end local v3    # "fieldsCount":I
    .restart local v31    # "size":I
    .restart local v35    # "fieldsCount":I
    new-instance v1, Lnet/bytebuddy/jar/asm/ClassTooLargeException;

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/jar/asm/ClassTooLargeException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public final visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 280
    iput p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->version:I

    .line 281
    iput p2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->accessFlags:I

    .line 282
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const v1, 0xffff

    and-int v2, p1, v1

    invoke-virtual {v0, v2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->setMajorVersionAndClassName(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->thisClass:I

    .line 283
    if-eqz p4, :cond_0

    .line 284
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->signatureIndex:I

    .line 286
    :cond_0
    if-nez p5, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    :goto_0
    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->superClass:I

    .line 287
    if-eqz p6, :cond_2

    array-length v0, p6

    if-lez v0, :cond_2

    .line 288
    array-length v0, p6

    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaceCount:I

    .line 289
    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaces:[I

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaceCount:I

    if-ge v0, v2, :cond_2

    .line 291
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->interfaces:[I

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    aget-object v4, p6, v0

    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v3

    iget v3, v3, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    aput v3, v2, v0

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->compute:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    and-int v0, p1, v1

    const/16 v1, 0x33

    if-lt v0, v1, :cond_3

    .line 295
    const/4 v0, 0x2

    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->compute:I

    .line 297
    :cond_3
    return-void
.end method

.method public final visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 336
    if-eqz p2, :cond_0

    .line 337
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 338
    invoke-static {v0, p1, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 337
    return-object v0

    .line 340
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 341
    invoke-static {v0, p1, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 340
    return-object v0
.end method

.method public final visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 1
    .param p1, "attribute"    # Lnet/bytebuddy/jar/asm/Attribute;

    .line 362
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 363
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 364
    return-void
.end method

.method public final visitEnd()V
    .locals 0

    .line 459
    return-void
.end method

.method public final visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 8
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 429
    new-instance v7, Lnet/bytebuddy/jar/asm/FieldWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move-object v0, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/FieldWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    .local v0, "fieldWriter":Lnet/bytebuddy/jar/asm/FieldWriter;
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstField:Lnet/bytebuddy/jar/asm/FieldWriter;

    if-nez v1, :cond_0

    .line 432
    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstField:Lnet/bytebuddy/jar/asm/FieldWriter;

    goto :goto_0

    .line 434
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastField:Lnet/bytebuddy/jar/asm/FieldWriter;

    iput-object v0, v1, Lnet/bytebuddy/jar/asm/FieldWriter;->fv:Lnet/bytebuddy/jar/asm/FieldVisitor;

    .line 436
    :goto_0
    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastField:Lnet/bytebuddy/jar/asm/FieldWriter;

    return-object v0
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 387
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 396
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    .line 397
    .local v0, "nameSymbol":Lnet/bytebuddy/jar/asm/Symbol;
    iget v1, v0, Lnet/bytebuddy/jar/asm/Symbol;->info:I

    if-nez v1, :cond_3

    .line 398
    iget v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfInnerClasses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfInnerClasses:I

    .line 399
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 400
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v2, 0x0

    if-nez p2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v3, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v3

    iget v3, v3, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    :goto_0
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 401
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 402
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->innerClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, p4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 403
    iget v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfInnerClasses:I

    iput v1, v0, Lnet/bytebuddy/jar/asm/Symbol;->info:I

    .line 407
    :cond_3
    return-void
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 9
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 446
    new-instance v8, Lnet/bytebuddy/jar/asm/MethodWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v7, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->compute:I

    move-object v0, v8

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/MethodWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 448
    .local v0, "methodWriter":Lnet/bytebuddy/jar/asm/MethodWriter;
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    if-nez v1, :cond_0

    .line 449
    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    goto :goto_0

    .line 451
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    iput-object v0, v1, Lnet/bytebuddy/jar/asm/MethodWriter;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 453
    :goto_0
    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastMethod:Lnet/bytebuddy/jar/asm/MethodWriter;

    return-object v0
.end method

.method public final visitModule(Ljava/lang/String;ILjava/lang/String;)Lnet/bytebuddy/jar/asm/ModuleVisitor;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "version"    # Ljava/lang/String;

    .line 312
    new-instance v0, Lnet/bytebuddy/jar/asm/ModuleWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 315
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v2

    iget v2, v2, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    .line 317
    if-nez p3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v3, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v3

    :goto_0
    invoke-direct {v0, v1, v2, p2, v3}, Lnet/bytebuddy/jar/asm/ModuleWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;III)V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->moduleWriter:Lnet/bytebuddy/jar/asm/ModuleWriter;

    .line 312
    return-object v0
.end method

.method public final visitNestHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "nestHost"    # Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestHostClassIndex:I

    .line 323
    return-void
.end method

.method public final visitNestMember(Ljava/lang/String;)V
    .locals 2
    .param p1, "nestMember"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 371
    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfNestMemberClasses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfNestMemberClasses:I

    .line 372
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->nestMemberClasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 373
    return-void
.end method

.method public final visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->enclosingClassIndex:I

    .line 329
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 330
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->enclosingMethodIndex:I

    .line 332
    :cond_0
    return-void
.end method

.method public final visitPermittedSubclass(Ljava/lang/String;)V
    .locals 2
    .param p1, "permittedSubclass"    # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->permittedSubclasses:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->permittedSubclasses:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 380
    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfPermittedSubclasses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->numberOfPermittedSubclasses:I

    .line 381
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->permittedSubclasses:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 382
    return-void
.end method

.method public final visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 412
    new-instance v0, Lnet/bytebuddy/jar/asm/RecordComponentWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-direct {v0, v1, p1, p2, p3}, Lnet/bytebuddy/jar/asm/RecordComponentWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .local v0, "recordComponentWriter":Lnet/bytebuddy/jar/asm/RecordComponentWriter;
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstRecordComponent:Lnet/bytebuddy/jar/asm/RecordComponentWriter;

    if-nez v1, :cond_0

    .line 415
    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->firstRecordComponent:Lnet/bytebuddy/jar/asm/RecordComponentWriter;

    goto :goto_0

    .line 417
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRecordComponent:Lnet/bytebuddy/jar/asm/RecordComponentWriter;

    iput-object v0, v1, Lnet/bytebuddy/jar/asm/RecordComponentWriter;->delegate:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    .line 419
    :goto_0
    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRecordComponent:Lnet/bytebuddy/jar/asm/RecordComponentWriter;

    return-object v0
.end method

.method public final visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 301
    if-eqz p1, :cond_0

    .line 302
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->sourceFileIndex:I

    .line 304
    :cond_0
    if-eqz p2, :cond_1

    .line 305
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, p2, v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->encodeUtf8(Ljava/lang/String;II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->debugExtension:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 307
    :cond_1
    return-void
.end method

.method public final visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 348
    if-eqz p4, :cond_0

    .line 349
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 350
    invoke-static {v0, p1, p2, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 349
    return-object v0

    .line 353
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 354
    invoke-static {v0, p1, p2, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 353
    return-object v0
.end method
