.class public abstract Lnet/bytebuddy/utility/JavaConstant$Simple;
.super Ljava/lang/Object;
.source "JavaConstant.java"

# interfaces
.implements Lnet/bytebuddy/utility/JavaConstant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Simple"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher;,
        Lnet/bytebuddy/utility/JavaConstant$Simple$OfTypeDescription;,
        Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/utility/JavaConstant;"
    }
.end annotation


# static fields
.field protected static final CLASS_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;

.field protected static final CONSTANT_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher;

.field protected static final DIRECT_METHOD_HANDLE_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;

.field protected static final DIRECT_METHOD_HANDLE_DESC_KIND:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc$ForKind;

.field protected static final DYNAMIC_CONSTANT_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;

.field protected static final METHOD_HANDLE_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodHandleDesc;

.field protected static final METHOD_TYPE_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodTypeDesc;


# instance fields
.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

.field protected final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    const-class v0, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher;

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$Simple;->CONSTANT_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher;

    .line 176
    const-class v0, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$Simple;->CLASS_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;

    .line 181
    const-class v0, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodTypeDesc;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodTypeDesc;

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$Simple;->METHOD_TYPE_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodTypeDesc;

    .line 186
    const-class v0, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodHandleDesc;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodHandleDesc;

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$Simple;->METHOD_HANDLE_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodHandleDesc;

    .line 191
    const-class v0, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$Simple;->DIRECT_METHOD_HANDLE_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;

    .line 196
    const-class v0, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc$ForKind;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc$ForKind;

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$Simple;->DIRECT_METHOD_HANDLE_DESC_KIND:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc$ForKind;

    .line 201
    const-class v0, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$Simple;->DYNAMIC_CONSTANT_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0
    .param p2, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")V"
        }
    .end annotation

    .line 219
    .local p0, "this":Lnet/bytebuddy/utility/JavaConstant$Simple;, "Lnet/bytebuddy/utility/JavaConstant$Simple<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lnet/bytebuddy/utility/JavaConstant$Simple;->value:Ljava/lang/Object;

    .line 221
    iput-object p2, p0, Lnet/bytebuddy/utility/JavaConstant$Simple;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 222
    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 3
    .param p0, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 365
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTypeDescription;

    invoke-direct {v0, p0}, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTypeDescription;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A primitive type cannot be represented as a type constant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofDescription(Ljava/lang/Object;Ljava/lang/ClassLoader;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 260
    invoke-static {p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple;->ofDescription(Ljava/lang/Object;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v0

    return-object v0
.end method

.method public static ofDescription(Ljava/lang/Object;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 271
    invoke-static {p1}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;->of(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple;->ofDescription(Ljava/lang/Object;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v0

    return-object v0
.end method

.method public static ofDescription(Ljava/lang/Object;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 17
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "typePool"    # Lnet/bytebuddy/pool/TypePool;

    .line 282
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 283
    new-instance v2, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v2

    .line 284
    :cond_0
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 285
    new-instance v2, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;

    move-object v3, v0

    check-cast v3, Ljava/lang/Long;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v2

    .line 286
    :cond_1
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_2

    .line 287
    new-instance v2, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;

    move-object v3, v0

    check-cast v3, Ljava/lang/Float;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v2

    .line 288
    :cond_2
    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_3

    .line 289
    new-instance v2, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;

    move-object v3, v0

    check-cast v3, Ljava/lang/Double;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v2

    .line 290
    :cond_3
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 291
    new-instance v2, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lnet/bytebuddy/description/type/TypeDescription;->STRING:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v2, v3, v4}, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v2

    .line 292
    :cond_4
    sget-object v2, Lnet/bytebuddy/utility/JavaConstant$Simple;->CLASS_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;

    invoke-interface {v2, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    const/16 v6, 0x9

    if-eqz v3, :cond_6

    .line 293
    invoke-interface {v2, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;->descriptorString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v2

    .line 294
    .local v2, "type":Lnet/bytebuddy/jar/asm/Type;
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 295
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 296
    :cond_5
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 294
    :goto_0
    invoke-interface {v1, v3}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v3

    .line 296
    invoke-interface {v3}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    .line 294
    invoke-static {v3}, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTypeDescription;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v3

    return-object v3

    .line 297
    .end local v2    # "type":Lnet/bytebuddy/jar/asm/Type;
    :cond_6
    sget-object v2, Lnet/bytebuddy/utility/JavaConstant$Simple;->METHOD_TYPE_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodTypeDesc;

    invoke-interface {v2, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodTypeDesc;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_a

    .line 298
    invoke-interface {v2, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodTypeDesc;->parameterArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 299
    .local v2, "parameterTypes":[Ljava/lang/Object;
    new-instance v3, Ljava/util/ArrayList;

    array-length v8, v2

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    .local v3, "typeDescriptions":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription;>;"
    array-length v8, v2

    :goto_1
    if-ge v7, v8, :cond_8

    aget-object v9, v2, v7

    .line 301
    .local v9, "parameterType":Ljava/lang/Object;
    sget-object v10, Lnet/bytebuddy/utility/JavaConstant$Simple;->CLASS_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;

    invoke-interface {v10, v9}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;->descriptorString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v10

    .line 302
    .local v10, "type":Lnet/bytebuddy/jar/asm/Type;
    invoke-virtual {v10}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v11

    if-ne v11, v6, :cond_7

    .line 303
    invoke-virtual {v10}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 304
    :cond_7
    invoke-virtual {v10}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 302
    :goto_2
    invoke-interface {v1, v11}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v11

    .line 304
    invoke-interface {v11}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    .line 302
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v9    # "parameterType":Ljava/lang/Object;
    .end local v10    # "type":Lnet/bytebuddy/jar/asm/Type;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 306
    :cond_8
    sget-object v7, Lnet/bytebuddy/utility/JavaConstant$Simple;->CLASS_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;

    sget-object v8, Lnet/bytebuddy/utility/JavaConstant$Simple;->METHOD_TYPE_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodTypeDesc;

    invoke-interface {v8, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodTypeDesc;->returnType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;->descriptorString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v7

    .line 307
    .local v7, "type":Lnet/bytebuddy/jar/asm/Type;
    invoke-virtual {v7}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v8

    if-ne v8, v6, :cond_9

    .line 308
    invoke-virtual {v7}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 309
    :cond_9
    invoke-virtual {v7}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 307
    :goto_3
    invoke-interface {v1, v4}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v4

    .line 309
    invoke-interface {v4}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    .line 307
    invoke-static {v4, v3}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->of(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v4

    return-object v4

    .line 310
    .end local v2    # "parameterTypes":[Ljava/lang/Object;
    .end local v3    # "typeDescriptions":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription;>;"
    .end local v7    # "type":Lnet/bytebuddy/jar/asm/Type;
    :cond_a
    sget-object v3, Lnet/bytebuddy/utility/JavaConstant$Simple;->DIRECT_METHOD_HANDLE_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;

    invoke-interface {v3, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 311
    sget-object v3, Lnet/bytebuddy/utility/JavaConstant$Simple;->METHOD_HANDLE_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodHandleDesc;

    invoke-interface {v3, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodHandleDesc;->invocationType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodTypeDesc;->parameterArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 312
    .restart local v2    # "parameterTypes":[Ljava/lang/Object;
    new-instance v3, Ljava/util/ArrayList;

    array-length v8, v2

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    .restart local v3    # "typeDescriptions":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription;>;"
    array-length v8, v2

    :goto_4
    if-ge v7, v8, :cond_c

    aget-object v9, v2, v7

    .line 314
    .restart local v9    # "parameterType":Ljava/lang/Object;
    sget-object v10, Lnet/bytebuddy/utility/JavaConstant$Simple;->CLASS_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;

    invoke-interface {v10, v9}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;->descriptorString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v10

    .line 315
    .restart local v10    # "type":Lnet/bytebuddy/jar/asm/Type;
    invoke-virtual {v10}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v11

    if-ne v11, v6, :cond_b

    .line 316
    invoke-virtual {v10}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 317
    :cond_b
    invoke-virtual {v10}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 315
    :goto_5
    invoke-interface {v1, v11}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v11

    .line 317
    invoke-interface {v11}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    .line 315
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v9    # "parameterType":Ljava/lang/Object;
    .end local v10    # "type":Lnet/bytebuddy/jar/asm/Type;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 319
    :cond_c
    sget-object v7, Lnet/bytebuddy/utility/JavaConstant$Simple;->CLASS_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;

    sget-object v8, Lnet/bytebuddy/utility/JavaConstant$Simple;->METHOD_TYPE_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodTypeDesc;

    sget-object v9, Lnet/bytebuddy/utility/JavaConstant$Simple;->METHOD_HANDLE_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodHandleDesc;

    invoke-interface {v9, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodHandleDesc;->invocationType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfMethodTypeDesc;->returnType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;->descriptorString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v8

    .line 320
    .local v8, "type":Lnet/bytebuddy/jar/asm/Type;
    new-instance v15, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    sget-object v9, Lnet/bytebuddy/utility/JavaConstant$Simple;->DIRECT_METHOD_HANDLE_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;

    invoke-interface {v9, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;->refKind(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->of(I)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v10

    .line 321
    invoke-interface {v9, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;->owner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7, v11}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;->descriptorString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v7

    invoke-virtual {v7}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    .line 322
    invoke-interface {v9, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;->methodName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 323
    invoke-interface {v9, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;->refKind(Ljava/lang/Object;)I

    move-result v7

    const/16 v9, 0x8

    if-ne v7, v9, :cond_d

    sget-object v4, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    move-object v13, v4

    goto :goto_7

    .line 325
    :cond_d
    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v7

    if-ne v7, v6, :cond_e

    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_e
    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-interface {v1, v4}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    move-object v13, v4

    :goto_7
    move-object v9, v15

    move-object v14, v3

    invoke-direct/range {v9 .. v14}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;-><init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    .line 320
    return-object v15

    .line 327
    .end local v2    # "parameterTypes":[Ljava/lang/Object;
    .end local v3    # "typeDescriptions":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription;>;"
    .end local v8    # "type":Lnet/bytebuddy/jar/asm/Type;
    :cond_f
    sget-object v2, Lnet/bytebuddy/utility/JavaConstant$Simple;->DYNAMIC_CONSTANT_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;

    invoke-interface {v2, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 328
    invoke-interface {v2, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;->bootstrapMethod(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;->lookupDescriptor(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v2

    .line 329
    .local v2, "methodType":Lnet/bytebuddy/jar/asm/Type;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes()[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v8

    array-length v8, v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    .local v3, "parameterTypes":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes()[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v8

    array-length v9, v8

    move v10, v7

    :goto_8
    if-ge v10, v9, :cond_11

    aget-object v11, v8, v10

    .line 331
    .local v11, "type":Lnet/bytebuddy/jar/asm/Type;
    invoke-virtual {v11}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v12

    if-ne v12, v6, :cond_10

    .line 332
    invoke-virtual {v11}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    .line 333
    :cond_10
    invoke-virtual {v11}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 331
    :goto_9
    invoke-interface {v1, v12}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v12

    .line 333
    invoke-interface {v12}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    .line 331
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v11    # "type":Lnet/bytebuddy/jar/asm/Type;
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 335
    :cond_11
    sget-object v8, Lnet/bytebuddy/utility/JavaConstant$Simple;->DYNAMIC_CONSTANT_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;

    invoke-interface {v8, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;->bootstrapArgs(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .line 336
    .local v8, "constant":[Ljava/lang/Object;
    new-instance v9, Ljava/util/ArrayList;

    array-length v10, v8

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v9

    .line 337
    .local v15, "arguments":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/utility/JavaConstant;>;"
    array-length v9, v8

    :goto_a
    if-ge v7, v9, :cond_12

    aget-object v10, v8, v7

    .line 338
    .local v10, "aConstant":Ljava/lang/Object;
    invoke-static {v10, v1}, Lnet/bytebuddy/utility/JavaConstant$Simple;->ofDescription(Ljava/lang/Object;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    .end local v10    # "aConstant":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 340
    :cond_12
    sget-object v7, Lnet/bytebuddy/utility/JavaConstant$Simple;->CLASS_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;

    sget-object v9, Lnet/bytebuddy/utility/JavaConstant$Simple;->DYNAMIC_CONSTANT_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;

    invoke-interface {v9, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;->constantType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;->descriptorString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v16

    .line 341
    .local v16, "type":Lnet/bytebuddy/jar/asm/Type;
    new-instance v14, Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    invoke-interface {v9, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;->constantName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 342
    invoke-virtual/range {v16 .. v16}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v10

    if-ne v10, v6, :cond_13

    .line 343
    invoke-virtual/range {v16 .. v16}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    .line 344
    :cond_13
    invoke-virtual/range {v16 .. v16}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v10

    .line 342
    :goto_b
    invoke-interface {v1, v10}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v10

    .line 344
    invoke-interface {v10}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    new-instance v11, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    sget-object v10, Lnet/bytebuddy/utility/JavaConstant$Simple;->DIRECT_METHOD_HANDLE_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;

    .line 345
    invoke-interface {v9, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;->bootstrapMethod(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v10, v4}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;->refKind(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->of(I)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v4

    .line 346
    invoke-interface {v9, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;->bootstrapMethod(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v10, v5}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;->owner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v7, v5}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;->descriptorString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v5

    invoke-virtual {v5}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    .line 347
    invoke-interface {v9, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDynamicConstantDesc;->bootstrapMethod(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v10, v7}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfDirectMethodHandleDesc;->methodName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 348
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getReturnType()Lnet/bytebuddy/jar/asm/Type;

    move-result-object v9

    invoke-virtual {v9}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v9

    if-ne v9, v6, :cond_14

    .line 349
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getReturnType()Lnet/bytebuddy/jar/asm/Type;

    move-result-object v6

    invoke-virtual {v6}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x2e

    const/16 v10, 0x2f

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    .line 350
    :cond_14
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Type;->getReturnType()Lnet/bytebuddy/jar/asm/Type;

    move-result-object v6

    invoke-virtual {v6}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 348
    :goto_c
    invoke-interface {v1, v6}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v6

    .line 350
    invoke-interface {v6}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    move-object v9, v11

    move-object v10, v4

    move-object v4, v11

    move-object v11, v5

    move-object v5, v12

    move-object v12, v7

    move-object v7, v13

    move-object v13, v6

    move-object v6, v14

    move-object v14, v3

    invoke-direct/range {v9 .. v14}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;-><init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    invoke-direct {v6, v7, v5, v4, v15}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/utility/JavaConstant$MethodHandle;Ljava/util/List;)V

    .line 341
    return-object v6

    .line 354
    .end local v2    # "methodType":Lnet/bytebuddy/jar/asm/Type;
    .end local v3    # "parameterTypes":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription;>;"
    .end local v8    # "constant":[Ljava/lang/Object;
    .end local v15    # "arguments":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/utility/JavaConstant;>;"
    .end local v16    # "type":Lnet/bytebuddy/jar/asm/Type;
    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a resolvable constant description or not expressible as a constant pool value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 231
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;

    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 233
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;

    move-object v1, p0

    check-cast v1, Ljava/lang/Long;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 235
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 236
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;

    move-object v1, p0

    check-cast v1, Ljava/lang/Float;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 237
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 238
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;

    move-object v1, p0

    check-cast v1, Ljava/lang/Double;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 239
    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 240
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription;->STRING:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 241
    :cond_4
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_5

    .line 242
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$Simple;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v0

    return-object v0

    .line 243
    :cond_5
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 244
    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object v0

    return-object v0

    .line 245
    :cond_6
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 246
    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object v0

    return-object v0

    .line 248
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a loaded Java constant value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static wrap(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Lnet/bytebuddy/utility/JavaConstant;",
            ">;"
        }
    .end annotation

    .line 394
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 395
    .local v0, "constants":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/utility/JavaConstant;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 396
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v2}, Lnet/bytebuddy/utility/JavaConstant$Simple;->wrap(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 398
    :cond_0
    return-object v0
.end method

.method public static wrap(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 378
    instance-of v0, p0, Lnet/bytebuddy/utility/JavaConstant;

    if-eqz v0, :cond_0

    .line 379
    move-object v0, p0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant;

    return-object v0

    .line 380
    :cond_0
    instance-of v0, p0, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v0, :cond_1

    .line 381
    move-object v0, p0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaConstant$Simple;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v0

    return-object v0

    .line 383
    :cond_1
    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$Simple;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 424
    .local p0, "this":Lnet/bytebuddy/utility/JavaConstant$Simple;, "Lnet/bytebuddy/utility/JavaConstant$Simple<TT;>;"
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 425
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 426
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$Simple;->value:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/utility/JavaConstant$Simple;

    iget-object v1, v1, Lnet/bytebuddy/utility/JavaConstant$Simple;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 425
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 414
    .local p0, "this":Lnet/bytebuddy/utility/JavaConstant$Simple;, "Lnet/bytebuddy/utility/JavaConstant$Simple<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$Simple;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 407
    .local p0, "this":Lnet/bytebuddy/utility/JavaConstant$Simple;, "Lnet/bytebuddy/utility/JavaConstant$Simple<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$Simple;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 419
    .local p0, "this":Lnet/bytebuddy/utility/JavaConstant$Simple;, "Lnet/bytebuddy/utility/JavaConstant$Simple<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$Simple;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 431
    .local p0, "this":Lnet/bytebuddy/utility/JavaConstant$Simple;, "Lnet/bytebuddy/utility/JavaConstant$Simple<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$Simple;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
