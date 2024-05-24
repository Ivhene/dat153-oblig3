.class public Lorg/checkerframework/common/value/ReflectiveEvaluator;
.super Ljava/lang/Object;
.source "ReflectiveEvaluator.java"


# instance fields
.field private checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

.field private reportWarnings:Z


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Z)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p2, "factory"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .param p3, "reportWarnings"    # Z

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 47
    iput-boolean p3, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->reportWarnings:Z

    .line 48
    return-void
.end method

.method private static boxPrimitives(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 351
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 352
    const-class v0, Ljava/lang/Byte;

    return-object v0

    .line 353
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 354
    const-class v0, Ljava/lang/Short;

    return-object v0

    .line 355
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 356
    const-class v0, Ljava/lang/Integer;

    return-object v0

    .line 357
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 358
    const-class v0, Ljava/lang/Long;

    return-object v0

    .line 359
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 360
    const-class v0, Ljava/lang/Float;

    return-object v0

    .line 361
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 362
    const-class v0, Ljava/lang/Double;

    return-object v0

    .line 363
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 364
    const-class v0, Ljava/lang/Character;

    return-object v0

    .line 365
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 366
    const-class v0, Ljava/lang/Boolean;

    return-object v0

    .line 368
    :cond_7
    return-object p0
.end method

.method private cartesianProduct(Ljava/util/List;I)Ljava/util/List;
    .locals 8
    .param p2, "whichArg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "*>;>;I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 234
    .local p1, "allArgValues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 235
    .local v0, "argValues":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v1, "tuples":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 238
    .local v3, "value":Ljava/lang/Object;
    if-nez p2, :cond_0

    .line 239
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    .line 240
    .local v4, "objects":[Ljava/lang/Object;
    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 241
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v4    # "objects":[Ljava/lang/Object;
    goto :goto_2

    .line 243
    :cond_0
    add-int/lit8 v4, p2, -0x1

    invoke-direct {p0, p1, v4}, Lorg/checkerframework/common/value/ReflectiveEvaluator;->cartesianProduct(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 244
    .local v4, "lastTuples":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-direct {p0, v4}, Lorg/checkerframework/common/value/ReflectiveEvaluator;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 245
    .local v5, "copies":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 246
    .local v7, "copy":[Ljava/lang/Object;
    aput-object v3, v7, p2

    .line 247
    .end local v7    # "copy":[Ljava/lang/Object;
    goto :goto_1

    .line 248
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "lastTuples":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v5    # "copies":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    :goto_2
    goto :goto_0

    .line 251
    :cond_2
    return-object v1
.end method

.method private copy(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 255
    .local p1, "lastTuples":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v0, "returnListOfLists":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 257
    .local v2, "list":[Ljava/lang/Object;
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 258
    .local v3, "copy":[Ljava/lang/Object;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v2    # "list":[Ljava/lang/Object;
    .end local v3    # "copy":[Ljava/lang/Object;
    goto :goto_0

    .line 260
    :cond_0
    return-object v0
.end method

.method private getConstructorObject(Lcom/sun/source/tree/NewClassTree;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/reflect/Constructor;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "typeToCreate"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/NewClassTree;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 340
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/NewClassTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 341
    .local v0, "ele":Ljavax/lang/model/element/ExecutableElement;
    invoke-direct {p0, v0}, Lorg/checkerframework/common/value/ReflectiveEvaluator;->getParameterClasses(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/List;

    move-result-object v1

    .line 342
    .local v1, "paramClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getClassFromType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/common/value/ReflectiveEvaluator;->boxPrimitives(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 343
    .local v2, "recClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 344
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    return-object v3
.end method

.method private getMethodObject(Lcom/sun/source/tree/MethodInvocationTree;)Ljava/lang/reflect/Method;
    .locals 9
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 179
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 180
    .local v2, "ele":Ljavax/lang/model/element/ExecutableElement;
    nop

    .line 181
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/DeclaredType;

    invoke-static {v3}, Lorg/checkerframework/javacutil/TypesUtils;->getQualifiedName(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/element/Name;

    move-result-object v3

    .line 182
    .local v3, "clazz":Ljavax/lang/model/element/Name;
    invoke-direct {p0, v2}, Lorg/checkerframework/common/value/ReflectiveEvaluator;->getParameterClasses(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/List;

    move-result-object v4

    .line 184
    .local v4, "paramClzz":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 185
    .local v5, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 187
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Class;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Class;

    .line 186
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 189
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v7

    .line 190
    .local v7, "acc":Z
    if-nez v7, :cond_0

    .line 191
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedClassVersionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_0
    return-object v6

    .line 204
    .end local v2    # "ele":Ljavax/lang/model/element/ExecutableElement;
    .end local v3    # "clazz":Ljavax/lang/model/element/Name;
    .end local v4    # "paramClzz":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v5    # "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "acc":Z
    :catchall_0
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    .line 209
    .local v3, "classElem":Ljavax/lang/model/element/Element;
    if-nez v3, :cond_1

    .line 210
    iget-boolean v4, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->reportWarnings:Z

    if-eqz v4, :cond_2

    .line 211
    iget-object v4, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v5, "method.find.failed"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v0}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v0

    invoke-virtual {v4, v0, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-boolean v0, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->reportWarnings:Z

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v4, "method.find.failed.in.class"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    invoke-virtual {v0, v4, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 218
    :cond_2
    :goto_0
    return-object v1

    .line 194
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "classElem":Ljavax/lang/model/element/Element;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    iget-boolean v2, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->reportWarnings:Z

    if-eqz v2, :cond_3

    .line 196
    iget-object v2, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 199
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 197
    const-string v4, "class.find.failed"

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 196
    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 202
    :cond_3
    return-object v1
.end method

.method private getParameterClasses(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/List;
    .locals 6
    .param p1, "ele"    # Ljavax/lang/model/element/ExecutableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 224
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "paramEles":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v1, "paramClzz":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 227
    .local v3, "e":Ljavax/lang/model/element/Element;
    invoke-static {v3}, Lorg/checkerframework/javacutil/ElementUtils;->getType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 228
    .local v4, "pType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v4}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getClassFromType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v3    # "e":Ljavax/lang/model/element/Element;
    .end local v4    # "pType":Ljavax/lang/model/type/TypeMirror;
    goto :goto_0

    .line 230
    :cond_0
    return-object v1
.end method

.method private normalizeVararg([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 5
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p2, "numberOfParameters"    # I

    .line 152
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 154
    new-array p1, v0, [Ljava/lang/Object;

    .line 156
    :cond_0
    new-array v1, p2, [Ljava/lang/Object;

    .line 158
    .local v1, "newArgs":[Ljava/lang/Object;
    array-length v2, p1

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x1

    .line 159
    .local v2, "numOfVarArgs":I
    if-lez v2, :cond_1

    .line 160
    add-int/lit8 v3, p2, -0x1

    invoke-static {p1, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    new-array v3, v2, [Ljava/lang/Object;

    .line 162
    .local v3, "varArgsArray":[Ljava/lang/Object;
    add-int/lit8 v4, p2, -0x1

    invoke-static {p1, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 164
    .end local v3    # "varArgsArray":[Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, p2, -0x1

    invoke-static {p1, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    new-array v3, v0, [Ljava/lang/Object;

    .line 167
    .restart local v3    # "varArgsArray":[Ljava/lang/Object;
    :goto_0
    add-int/lit8 v0, p2, -0x1

    aput-object v3, v1, v0

    .line 168
    return-object v1
.end method


# virtual methods
.method public evaluateMethodCall(Ljava/util/List;Ljava/util/List;Lcom/sun/source/tree/MethodInvocationTree;)Ljava/util/List;
    .locals 12
    .param p3, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "*>;>;",
            "Ljava/util/List<",
            "*>;",
            "Lcom/sun/source/tree/MethodInvocationTree;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 61
    .local p1, "allArgValues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    .local p2, "receiverValues":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v0, "method.evaluation.exception"

    invoke-direct {p0, p3}, Lorg/checkerframework/common/value/ReflectiveEvaluator;->getMethodObject(Lcom/sun/source/tree/MethodInvocationTree;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 62
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 63
    return-object v2

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 69
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 73
    :cond_1
    if-nez p1, :cond_2

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v3, "listOfArguments":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v3    # "listOfArguments":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, p1, v3}, Lorg/checkerframework/common/value/ReflectiveEvaluator;->cartesianProduct(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 82
    .restart local v3    # "listOfArguments":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v4, "newList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    .line 85
    .local v5, "numberOfParameters":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 86
    .local v7, "args":[Ljava/lang/Object;
    invoke-direct {p0, v7, v5}, Lorg/checkerframework/common/value/ReflectiveEvaluator;->normalizeVararg([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v7    # "args":[Ljava/lang/Object;
    goto :goto_1

    .line 88
    :cond_3
    move-object v3, v4

    .line 91
    .end local v4    # "newList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v5    # "numberOfParameters":I
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 93
    .local v6, "arguments":[Ljava/lang/Object;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 95
    .local v8, "receiver":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v1, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    nop

    .line 136
    .end local v8    # "receiver":Ljava/lang/Object;
    goto :goto_3

    .line 129
    .restart local v8    # "receiver":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Throwable;
    iget-boolean v5, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->reportWarnings:Z

    if-eqz v5, :cond_5

    .line 132
    iget-object v5, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v7, "method.evaluation.failed"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    invoke-virtual {v5, v7, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 134
    :cond_5
    return-object v2

    .line 118
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v5

    .line 119
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    iget-boolean v7, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->reportWarnings:Z

    if-eqz v7, :cond_6

    .line 120
    const-string v7, ", "

    invoke-static {v7, v6}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "args":Ljava/lang/String;
    iget-object v9, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v10

    .line 122
    invoke-static {v0, v10}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v0

    .line 121
    invoke-virtual {v9, v0, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 128
    .end local v7    # "args":Ljava/lang/String;
    :cond_6
    return-object v2

    .line 108
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v5

    .line 109
    .local v5, "e":Ljava/lang/ExceptionInInitializerError;
    iget-boolean v7, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->reportWarnings:Z

    if-eqz v7, :cond_7

    .line 110
    iget-object v7, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 114
    invoke-virtual {v5}, Ljava/lang/ExceptionInInitializerError;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 111
    invoke-static {v0, v9}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v0

    .line 110
    invoke-virtual {v7, v0, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 117
    :cond_7
    return-object v2

    .line 96
    .end local v5    # "e":Ljava/lang/ExceptionInInitializerError;
    :catch_2
    move-exception v5

    .line 97
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    iget-boolean v7, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->reportWarnings:Z

    if-eqz v7, :cond_8

    .line 98
    iget-object v7, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 102
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 99
    invoke-static {v0, v9}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v0

    .line 98
    invoke-virtual {v7, v0, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 107
    :cond_8
    return-object v2

    .line 137
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v6    # "arguments":[Ljava/lang/Object;
    .end local v8    # "receiver":Ljava/lang/Object;
    :cond_9
    goto/16 :goto_2

    .line 138
    :cond_a
    return-object v4
.end method

.method public evaluateStaticFieldAccess(Ljava/lang/String;Ljava/lang/String;Lcom/sun/source/tree/MemberSelectTree;)Ljava/lang/Object;
    .locals 5
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "tree"    # Lcom/sun/source/tree/MemberSelectTree;

    .line 274
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 275
    .local v1, "recClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 276
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedClassVersionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 283
    .end local v1    # "recClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Throwable;
    iget-boolean v2, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->reportWarnings:Z

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v3, "field.access.failed"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 288
    :cond_0
    return-object v0

    .line 278
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 279
    .restart local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-boolean v2, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->reportWarnings:Z

    if-eqz v2, :cond_1

    .line 280
    iget-object v2, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v3, "class.find.failed"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 282
    :cond_1
    return-object v0
.end method

.method public evaluteConstructorCall(Ljava/util/ArrayList;Lcom/sun/source/tree/NewClassTree;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;
    .locals 9
    .param p2, "tree"    # Lcom/sun/source/tree/NewClassTree;
    .param p3, "typeToCreate"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "*>;>;",
            "Lcom/sun/source/tree/NewClassTree;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 297
    .local p1, "argValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<*>;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lorg/checkerframework/common/value/ReflectiveEvaluator;->getConstructorObject(Lcom/sun/source/tree/NewClassTree;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 304
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    nop

    .line 305
    if-nez v1, :cond_0

    .line 306
    return-object v0

    .line 310
    :cond_0
    if-nez p1, :cond_1

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v2, "listOfArguments":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    .end local v2    # "listOfArguments":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, p1, v2}, Lorg/checkerframework/common/value/ReflectiveEvaluator;->cartesianProduct(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 319
    .restart local v2    # "listOfArguments":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 322
    .local v5, "arguments":[Ljava/lang/Object;
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    nop

    .line 334
    .end local v5    # "arguments":[Ljava/lang/Object;
    goto :goto_1

    .line 323
    .restart local v5    # "arguments":[Ljava/lang/Object;
    :catchall_0
    move-exception v4

    .line 324
    .local v4, "e":Ljava/lang/Throwable;
    iget-boolean v6, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->reportWarnings:Z

    if-eqz v6, :cond_2

    .line 325
    iget-object v6, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 329
    const-string v7, ", "

    invoke-static {v7, v5}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {p3, v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 326
    const-string v8, "constructor.evaluation.failed"

    invoke-static {v8, v7}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    .line 325
    invoke-virtual {v6, v7, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 332
    :cond_2
    return-object v0

    .line 335
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v5    # "arguments":[Ljava/lang/Object;
    :cond_3
    return-object v3

    .line 298
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "listOfArguments":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v3    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_1
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Throwable;
    iget-boolean v2, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->reportWarnings:Z

    if-eqz v2, :cond_4

    .line 301
    iget-object v2, p0, Lorg/checkerframework/common/value/ReflectiveEvaluator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "constructor.invocation.failed"

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 303
    :cond_4
    return-object v0
.end method
