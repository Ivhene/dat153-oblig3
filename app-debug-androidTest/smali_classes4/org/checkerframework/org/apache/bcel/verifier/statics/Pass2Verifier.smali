.class public final Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;
.super Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;
.source "Pass2Verifier.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$InnerClassDetector;,
        Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;,
        Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;
    }
.end annotation


# instance fields
.field private localVariablesInfos:[Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;

.field private final myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/verifier/Verifier;)V
    .locals 0
    .param p1, "owner"    # Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    .line 107
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    .line 109
    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/classfile/Node;

    .line 89
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->tostring(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 89
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->validInterfaceMethodName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 89
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->validFieldName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .line 89
    invoke-static {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->validMethodName(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    .line 89
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;)[Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;

    .line 89
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->localVariablesInfos:[Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 89
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->validJavaIdentifier(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 89
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->validClassName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 89
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->validClassMethodName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private constant_pool_entries_satisfy_static_constraints()V
    .locals 4

    .line 305
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    .line 306
    .local v0, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$CPESSC_Visitor;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$1;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    nop

    .line 312
    .end local v0    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 310
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

.method private every_class_has_an_accessible_superclass()V
    .locals 9

    .line 198
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 199
    .local v0, "hs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    .line 200
    .local v1, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    const/4 v2, -0x1

    .line 202
    .local v2, "supidx":I
    :goto_0
    if-eqz v2, :cond_5

    .line 203
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassNameIndex()I

    move-result v3

    move v2, v3

    .line 205
    if-nez v2, :cond_1

    .line 206
    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v3

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance v3, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Superclass of \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' missing but not "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 208
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " itself!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 212
    :cond_1
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "supername":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 216
    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v4

    .line 217
    .local v4, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass1()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v5

    .line 219
    .local v5, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    sget-object v6, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    if-ne v5, v6, :cond_3

    .line 222
    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v6

    move-object v1, v6

    .line 224
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->isFinal()Z

    move-result v6

    if-nez v6, :cond_2

    .line 228
    .end local v3    # "supername":Ljava/lang/String;
    .end local v4    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v5    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    goto :goto_0

    .line 225
    .restart local v3    # "supername":Ljava/lang/String;
    .restart local v4    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .restart local v5    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :cond_2
    new-instance v6, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ancestor class \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' has the FINAL access modifier and must therefore not be subclassed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 220
    :cond_3
    new-instance v6, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not load in ancestor class \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 214
    .end local v4    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v5    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :cond_4
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    const-string v5, "Circular superclass hierarchy detected."

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0    # "hs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v2    # "supidx":I
    .end local v3    # "supername":Ljava/lang/String;
    :cond_5
    nop

    .line 235
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 233
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

.method private field_and_method_refs_are_valid()V
    .locals 4

    .line 1299
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    .line 1300
    .local v0, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;

    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$FAMRAV_Visitor;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier$1;)V

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V

    .line 1301
    .local v1, "v":Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;->visit()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    .end local v0    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v1    # "v":Lorg/checkerframework/org/apache/bcel/classfile/DescendingVisitor;
    nop

    .line 1307
    return-void

    .line 1303
    :catch_0
    move-exception v0

    .line 1305
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

.method private final_methods_are_not_overridden()V
    .locals 12

    .line 250
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v0, "hashmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    .line 253
    .local v1, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    const/4 v2, -0x1

    .line 254
    .local v2, "supidx":I
    :goto_0
    if-eqz v2, :cond_5

    .line 255
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassNameIndex()I

    move-result v3

    move v2, v3

    .line 257
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v3

    .line 258
    .local v3, "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 259
    .local v6, "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "nameAndSig":Ljava/lang/String;
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 262
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isFinal()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 263
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isPrivate()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "\' overrides the final (not-overridable) definition in class \'"

    const-string v10, "\' in class \'"

    const-string v11, "Method \'"

    if-eqz v8, :cond_0

    .line 267
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 268
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'. This is okay, as the original definition was private; however this constraint leverage was introduced by JLS 8.4.6 (not vmspec2) and the behaviour of the Sun verifiers."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 267
    invoke-virtual {p0, v8}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->addMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 264
    :cond_0
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 265
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\'."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 272
    :cond_1
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isStatic()Z

    move-result v8

    if-nez v8, :cond_3

    .line 273
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 277
    :cond_2
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isStatic()Z

    move-result v8

    if-nez v8, :cond_3

    .line 278
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .end local v6    # "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local v7    # "nameAndSig":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 283
    :cond_4
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v4

    .line 285
    .end local v3    # "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    goto/16 :goto_0

    .line 290
    .end local v0    # "hashmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v2    # "supidx":I
    :cond_5
    nop

    .line 292
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 289
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

.method private static tostring(Lorg/checkerframework/org/apache/bcel/classfile/Node;)Ljava/lang/String;
    .locals 1
    .param p0, "n"    # Lorg/checkerframework/org/apache/bcel/classfile/Node;

    .line 1579
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/Node;)V

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/StringRepresentation;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static validClassMethodName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1459
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->validMethodName(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static validClassName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1432
    const/4 v0, 0x1

    return v0
.end method

.method private static validFieldName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1522
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->validJavaIdentifier(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static validInterfaceMethodName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1488
    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1489
    const/4 v0, 0x0

    return v0

    .line 1491
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->validJavaLangMethodName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static validJavaIdentifier(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1499
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1500
    return v1

    .line 1504
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1505
    return v1

    .line 1508
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1509
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1510
    return v1

    .line 1508
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1513
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private static validJavaLangMethodName(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1470
    return v0

    .line 1473
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1474
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1475
    return v0

    .line 1473
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1478
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static validMethodName(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "allowStaticInit"    # Z

    .line 1443
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->validJavaLangMethodName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1444
    return v1

    .line 1447
    :cond_0
    const-string v0, "<init>"

    if-eqz p1, :cond_3

    .line 1448
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "<clinit>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    .line 1450
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public do_verify()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .locals 6

    .line 155
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass1()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v0

    .line 156
    .local v0, "vr1":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    sget-object v1, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->localVariablesInfos:[Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;

    .line 162
    sget-object v1, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    .local v1, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :try_start_1
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->constant_pool_entries_satisfy_static_constraints()V

    .line 165
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->field_and_method_refs_are_valid()V

    .line 166
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->every_class_has_an_accessible_superclass()V

    .line 167
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->final_methods_are_not_overridden()V
    :try_end_1
    .catch Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "cce":Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;
    :try_start_2
    new-instance v3, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v5, v4}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    move-object v1, v3

    .line 172
    .end local v2    # "cce":Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;
    :goto_0
    return-object v1

    .line 174
    .end local v1    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :cond_0
    sget-object v1, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_NOTYET:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    .line 176
    .end local v0    # "vr1":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :catch_1
    move-exception v0

    .line 178
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

.method public getLocalVariablesInfo(I)Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;
    .locals 2
    .param p1, "method_nr"    # I

    .line 121
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->verify()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    if-eq v0, v1, :cond_0

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass2Verifier;->localVariablesInfos:[Lorg/checkerframework/org/apache/bcel/verifier/statics/LocalVariablesInfo;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 127
    aget-object v0, v0, p1

    return-object v0

    .line 125
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "Method number out of range."

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
