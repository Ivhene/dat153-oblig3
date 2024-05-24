.class public final Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;
.super Ljava/lang/Object;
.source "ReflectionPlume.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume$PromiscuousLoader;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static args_seen:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static primitiveClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static thePromiscuousLoader:Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume$PromiscuousLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    nop

    .line 72
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->primitiveClasses:Ljava/util/HashMap;

    .line 75
    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->primitiveClasses:Ljava/util/HashMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->primitiveClasses:Ljava/util/HashMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->primitiveClasses:Ljava/util/HashMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->primitiveClasses:Ljava/util/HashMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->primitiveClasses:Ljava/util/HashMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->primitiveClasses:Ljava/util/HashMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->primitiveClasses:Ljava/util/HashMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume$PromiscuousLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume$PromiscuousLoader;-><init>(Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume$1;)V

    sput-object v0, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->thePromiscuousLoader:Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume$PromiscuousLoader;

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->args_seen:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Error;

    const-string v1, "do not instantiate"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addToClasspath(Ljava/lang/String;)V
    .locals 6
    .param p0, "dir"    # Ljava/lang/String;

    .line 222
    const-string v0, "path.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "pathSep":Ljava/lang/String;
    const-string v1, "."

    const-string v2, "java.class.path"

    invoke-static {v2, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x5c

    const/16 v4, 0x2f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "cp":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    const/4 v4, 0x0

    .line 227
    .local v4, "found":Z
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v4, :cond_0

    .line 228
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 230
    :cond_0
    if-nez v4, :cond_1

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    :cond_1
    return-void
.end method

.method public static classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 107
    sget-object v0, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->primitiveClasses:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 108
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 109
    return-object v0

    .line 112
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 113
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 116
    .local v2, "pos":I
    if-ltz v2, :cond_1

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "innerName":Ljava/lang/String;
    move-object p0, v3

    .line 123
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 124
    :catch_1
    move-exception v4

    .line 125
    .local v4, "ee":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 117
    .end local v3    # "innerName":Ljava/lang/String;
    .end local v4    # "ee":Ljava/lang/ClassNotFoundException;
    :cond_1
    throw v1
.end method

.method public static defineClassFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    sget-object v0, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->thePromiscuousLoader:Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume$PromiscuousLoader;

    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume$PromiscuousLoader;->defineClassFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static fullyQualifiedNameToSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "qualifiedName"    # Ljava/lang/String;

    .line 144
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 145
    .local v0, "offset":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 146
    return-object p0

    .line 148
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPrivateField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 388
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    .line 391
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 392
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 393
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 396
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    .line 402
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): c was not Object, so is not null now"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 398
    .restart local v1    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1
    throw v1

    .line 394
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This can\'t happen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 405
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isSubtype(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 50
    .local p0, "sub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "sup":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 51
    return v0

    .line 55
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 57
    .local v1, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_1

    invoke-static {v1, p1}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->isSubtype(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    :cond_1
    return v0

    .line 62
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    .line 63
    .local v6, "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v6, p1, :cond_4

    invoke-static {v6, p1}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->isSubtype(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 62
    .end local v6    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 64
    .restart local v6    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_1
    return v0

    .line 68
    .end local v6    # "ifc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    return v4
.end method

.method public static leastUpperBound(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 417
    .local p0, "a":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "b":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-ne p0, p1, :cond_0

    .line 418
    return-object p0

    .line 419
    :cond_0
    if-nez p0, :cond_1

    .line 420
    return-object p1

    .line 421
    :cond_1
    if-nez p1, :cond_2

    .line 422
    return-object p0

    .line 423
    :cond_2
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 424
    return-object p1

    .line 425
    :cond_3
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 426
    return-object p0

    .line 427
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 428
    return-object p0

    .line 429
    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 430
    return-object p1

    .line 434
    :cond_6
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static leastUpperBound(Ljava/util/List;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 482
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 483
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 484
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 485
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->leastUpperBound(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 487
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 488
    :cond_1
    return-object v0
.end method

.method public static leastUpperBound([Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 446
    .local p0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 447
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 448
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {v0, v3}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->leastUpperBound(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 447
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    :cond_0
    return-object v0
.end method

.method public static leastUpperBound([Ljava/lang/Object;)Ljava/lang/Class;
    .locals 5
    .param p0, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 465
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 466
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->leastUpperBound(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 464
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 469
    :cond_1
    return-object v0
.end method

.method public static methodForName(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 13
    .param p0, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 265
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 266
    .local v0, "oparenpos":I
    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 267
    .local v1, "dotpos":I
    const/16 v2, 0x29

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 268
    .local v2, "cparenpos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    if-eq v0, v3, :cond_5

    if-eq v2, v3, :cond_5

    .line 280
    add-int/lit8 v3, v2, 0x1

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 281
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    :cond_0
    new-instance v4, Ljava/lang/Error;

    const-string v5, "malformed method name should contain only whitespace following close paren"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 288
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "classname":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, "methodname":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "all_argnames":Ljava/lang/String;
    sget-object v7, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->args_seen:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Class;

    .line 292
    .local v7, "argclasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v7, :cond_4

    .line 294
    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 295
    new-array v3, v3, [Ljava/lang/String;

    .local v3, "argnames":[Ljava/lang/String;
    goto :goto_1

    .line 298
    .end local v3    # "argnames":[Ljava/lang/String;
    :cond_2
    const-string v3, " *, *"

    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "bnArgnames":[Ljava/lang/String;
    move-object v8, v3

    .line 302
    .local v3, "argnames":[Ljava/lang/String;
    :goto_1
    array-length v8, v3

    new-array v8, v8, [Ljava/lang/Class;

    .line 303
    .local v8, "argclasses_tmp":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v10, v3

    if-ge v9, v10, :cond_3

    .line 304
    aget-object v10, v3, v9

    .line 305
    .local v10, "bnArgname":Ljava/lang/String;
    invoke-static {v10}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->binaryNameToClassGetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 306
    .local v11, "cgnArgname":Ljava/lang/String;
    invoke-static {v11}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v8, v9

    .line 303
    .end local v10    # "bnArgname":Ljava/lang/String;
    .end local v11    # "cgnArgname":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 309
    .end local v9    # "i":I
    :cond_3
    move-object v9, v8

    .line 310
    .local v9, "argclasses_res":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v7, v9

    .line 311
    sget-object v10, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->args_seen:Ljava/util/HashMap;

    invoke-virtual {v10, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .end local v3    # "argnames":[Ljava/lang/String;
    .end local v8    # "argclasses_tmp":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v9    # "argclasses_res":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    invoke-static {v4, v5, v7}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;->methodForName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    return-object v3

    .line 269
    .end local v4    # "classname":Ljava/lang/String;
    .end local v5    # "methodname":Ljava/lang/String;
    .end local v6    # "all_argnames":Ljava/lang/String;
    .end local v7    # "argclasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "malformed method name should contain a period, open paren, and close paren: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static methodForName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "methodname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 330
    .local p2, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 331
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 332
    .local v1, "m":Ljava/lang/reflect/Method;
    return-object v1
.end method

.method public static setFinalField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 356
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    .line 359
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 360
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 361
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    return-void

    .line 367
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This can\'t happen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 363
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    .line 369
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    nop

    .line 370
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): c was not Object, so is not null now"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 365
    .restart local v1    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1
    throw v1

    .line 373
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :cond_2
    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
