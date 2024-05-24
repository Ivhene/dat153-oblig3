.class public Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;
.super Ljava/lang/ClassLoader;
.source "JavaDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DynamicClassLoader"
.end annotation


# static fields
.field private static final NO_ARGUMENT:[Ljava/lang/Object;

.field private static final NO_PARAMETER:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1124
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;->NO_PARAMETER:[Ljava/lang/Class;

    .line 1129
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;->NO_ARGUMENT:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    .line 1137
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 1138
    return-void
.end method

.method protected static invoker()Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;
    .locals 21

    .line 1209
    new-instance v1, Lnet/bytebuddy/jar/asm/ClassWriter;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lnet/bytebuddy/jar/asm/ClassWriter;-><init>(I)V

    .line 1210
    .local v1, "classWriter":Lnet/bytebuddy/jar/asm/ClassWriter;
    sget-object v2, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v2}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/ClassFileVersion;->getMinorMajorVersion()I

    move-result v2

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;

    .line 1212
    invoke-static {v5}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "$Dispatcher"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    .line 1214
    invoke-static {v6}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;

    .line 1215
    invoke-static {v7}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    .line 1210
    invoke-virtual/range {v1 .. v7}, Lnet/bytebuddy/jar/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1216
    const-class v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_3

    aget-object v6, v2, v4

    .line 1217
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 1218
    .local v7, "exceptionType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v9, v7

    new-array v9, v9, [Ljava/lang/String;

    .line 1219
    .local v9, "exceptionTypeName":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_1
    array-length v11, v7

    if-ge v10, v11, :cond_0

    .line 1220
    aget-object v11, v7, v10

    invoke-static {v11}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1219
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1222
    .end local v10    # "index":I
    :cond_0
    const/4 v11, 0x1

    .line 1223
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1224
    invoke-static {v6}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 1222
    move-object v10, v1

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Lnet/bytebuddy/jar/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v10

    .line 1227
    .local v10, "methodVisitor":Lnet/bytebuddy/jar/asm/MethodVisitor;
    invoke-virtual {v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    .line 1228
    const/4 v11, 0x1

    .line 1229
    .local v11, "offset":I
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    sub-int/2addr v12, v5

    new-array v5, v12, [Lnet/bytebuddy/jar/asm/Type;

    .line 1230
    .local v5, "parameter":[Lnet/bytebuddy/jar/asm/Type;
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v13, v13

    if-ge v12, v13, :cond_2

    .line 1231
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    aget-object v13, v13, v12

    invoke-static {v13}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v13

    .line 1232
    .local v13, "type":Lnet/bytebuddy/jar/asm/Type;
    if-lez v12, :cond_1

    .line 1233
    add-int/lit8 v14, v12, -0x1

    aput-object v13, v5, v14

    .line 1235
    :cond_1
    const/16 v14, 0x15

    invoke-virtual {v13, v14}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result v14

    invoke-virtual {v10, v14, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1236
    invoke-virtual {v13}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result v14

    add-int/2addr v11, v14

    .line 1230
    .end local v13    # "type":Lnet/bytebuddy/jar/asm/Type;
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1238
    .end local v12    # "index":I
    :cond_2
    const/16 v16, 0xb6

    .line 1239
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    aget-object v12, v12, v0

    invoke-static {v12}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    .line 1240
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1241
    invoke-static {v6}, Lnet/bytebuddy/jar/asm/Type;->getReturnType(Ljava/lang/reflect/Method;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v12

    invoke-static {v12, v5}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Lnet/bytebuddy/jar/asm/Type;[Lnet/bytebuddy/jar/asm/Type;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    .line 1238
    move-object v15, v10

    invoke-virtual/range {v15 .. v20}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1243
    invoke-static {v6}, Lnet/bytebuddy/jar/asm/Type;->getReturnType(Ljava/lang/reflect/Method;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v12

    const/16 v13, 0xac

    invoke-virtual {v12, v13}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result v12

    invoke-virtual {v10, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 1244
    add-int/lit8 v12, v11, -0x1

    invoke-static {v6}, Lnet/bytebuddy/jar/asm/Type;->getReturnType(Ljava/lang/reflect/Method;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v13

    invoke-virtual {v13}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v10, v12, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    .line 1245
    invoke-virtual {v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    .line 1216
    .end local v5    # "parameter":[Lnet/bytebuddy/jar/asm/Type;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "exceptionType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v9    # "exceptionTypeName":[Ljava/lang/String;
    .end local v10    # "methodVisitor":Lnet/bytebuddy/jar/asm/MethodVisitor;
    .end local v11    # "offset":I
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1247
    :cond_3
    const/4 v10, 0x1

    const-string v11, "<init>"

    sget-object v2, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    new-array v3, v0, [Lnet/bytebuddy/jar/asm/Type;

    .line 1249
    invoke-static {v2, v3}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Lnet/bytebuddy/jar/asm/Type;[Lnet/bytebuddy/jar/asm/Type;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1247
    move-object v9, v1

    invoke-virtual/range {v9 .. v14}, Lnet/bytebuddy/jar/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v2

    .line 1252
    .local v2, "methodVisitor":Lnet/bytebuddy/jar/asm/MethodVisitor;
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    .line 1253
    const/16 v3, 0x19

    invoke-virtual {v2, v3, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1254
    const/16 v16, 0xb7

    const-class v3, Ljava/lang/Object;

    .line 1255
    invoke-static {v3}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "<init>"

    sget-object v3, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/Type;

    .line 1257
    invoke-static {v3, v0}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Lnet/bytebuddy/jar/asm/Type;[Lnet/bytebuddy/jar/asm/Type;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    .line 1254
    move-object v15, v2

    invoke-virtual/range {v15 .. v20}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1259
    const/16 v0, 0xb1

    invoke-virtual {v2, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 1260
    invoke-virtual {v2, v5, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    .line 1261
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    .line 1262
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/ClassWriter;->visitEnd()V

    .line 1263
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/ClassWriter;->toByteArray()[B

    move-result-object v3

    .line 1265
    .local v3, "binaryRepresentation":[B
    :try_start_0
    new-instance v9, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;

    const-class v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {v9, v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;

    .line 1266
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    array-length v13, v3

    new-instance v14, Ljava/security/ProtectionDomain;

    const/4 v0, 0x0

    invoke-direct {v14, v0, v0}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    move-object v11, v3

    invoke-virtual/range {v9 .. v14}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;->NO_PARAMETER:[Ljava/lang/Class;

    .line 1267
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sget-object v4, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;->NO_ARGUMENT:[Ljava/lang/Object;

    .line 1268
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    return-object v0

    .line 1269
    :catch_0
    move-exception v0

    .line 1270
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create invoker for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Invoker;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static proxy(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Method;",
            "Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1149
    .local p0, "proxy":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "dispatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    new-instance v1, Lnet/bytebuddy/jar/asm/ClassWriter;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lnet/bytebuddy/jar/asm/ClassWriter;-><init>(I)V

    .line 1150
    .local v1, "classWriter":Lnet/bytebuddy/jar/asm/ClassWriter;
    sget-object v2, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v2}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/ClassFileVersion;->getMinorMajorVersion()I

    move-result v2

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1152
    invoke-static/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "$Proxy"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    .line 1154
    invoke-static {v6}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    .line 1155
    invoke-static/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    .line 1150
    invoke-virtual/range {v1 .. v7}, Lnet/bytebuddy/jar/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1156
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1157
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 1158
    .local v5, "exceptionType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v5

    new-array v6, v6, [Ljava/lang/String;

    .line 1159
    .local v6, "exceptionTypeName":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_1
    array-length v9, v5

    if-ge v7, v9, :cond_0

    .line 1160
    aget-object v9, v5, v7

    invoke-static {v9}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    .line 1159
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1162
    .end local v7    # "index":I
    :cond_0
    const/4 v10, 0x1

    .line 1163
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1164
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    invoke-static {v7}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 1162
    move-object v9, v1

    move-object v14, v6

    invoke-virtual/range {v9 .. v14}, Lnet/bytebuddy/jar/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v7

    .line 1167
    .local v7, "methodVisitor":Lnet/bytebuddy/jar/asm/MethodVisitor;
    invoke-virtual {v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    .line 1168
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    move v4, v0

    .line 1169
    .local v4, "offset":I
    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v10, v9

    move v11, v0

    :goto_3
    if-ge v11, v10, :cond_2

    aget-object v12, v9, v11

    .line 1170
    .local v12, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v12}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v13

    invoke-virtual {v13}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result v13

    add-int/2addr v4, v13

    .line 1169
    .end local v12    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1172
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Method;

    invoke-interface {v9, v7, v10}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/lang/reflect/Method;)I

    move-result v9

    invoke-virtual {v7, v9, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    .line 1173
    invoke-virtual {v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    .line 1174
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Method;Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;>;"
    .end local v4    # "offset":I
    .end local v5    # "exceptionType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "exceptionTypeName":[Ljava/lang/String;
    .end local v7    # "methodVisitor":Lnet/bytebuddy/jar/asm/MethodVisitor;
    goto/16 :goto_0

    .line 1175
    :cond_3
    const/4 v11, 0x1

    const-string v12, "<init>"

    sget-object v2, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    new-array v3, v0, [Lnet/bytebuddy/jar/asm/Type;

    .line 1177
    invoke-static {v2, v3}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Lnet/bytebuddy/jar/asm/Type;[Lnet/bytebuddy/jar/asm/Type;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1175
    move-object v10, v1

    invoke-virtual/range {v10 .. v15}, Lnet/bytebuddy/jar/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v2

    .line 1180
    .local v2, "methodVisitor":Lnet/bytebuddy/jar/asm/MethodVisitor;
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    .line 1181
    const/16 v3, 0x19

    invoke-virtual {v2, v3, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1182
    const/16 v17, 0xb7

    const-class v3, Ljava/lang/Object;

    .line 1183
    invoke-static {v3}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "<init>"

    sget-object v3, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/Type;

    .line 1185
    invoke-static {v3, v0}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Lnet/bytebuddy/jar/asm/Type;[Lnet/bytebuddy/jar/asm/Type;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    .line 1182
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v21}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1187
    const/16 v0, 0xb1

    invoke-virtual {v2, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 1188
    invoke-virtual {v2, v4, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    .line 1189
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    .line 1190
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/ClassWriter;->visitEnd()V

    .line 1191
    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/ClassWriter;->toByteArray()[B

    move-result-object v3

    .line 1193
    .local v3, "binaryRepresentation":[B
    :try_start_0
    new-instance v9, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {v9, v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1194
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    array-length v13, v3

    new-instance v14, Ljava/security/ProtectionDomain;

    const/4 v0, 0x0

    invoke-direct {v14, v0, v0}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    move-object v11, v3

    invoke-virtual/range {v9 .. v14}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;->NO_PARAMETER:[Ljava/lang/Class;

    .line 1195
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sget-object v4, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;->NO_ARGUMENT:[Ljava/lang/Object;

    .line 1196
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    return-object v0

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create proxy for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
