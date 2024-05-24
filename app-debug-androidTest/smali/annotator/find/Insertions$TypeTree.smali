.class abstract Lannotator/find/Insertions$TypeTree;
.super Ljava/lang/Object;
.source "Insertions.java"

# interfaces
.implements Lcom/sun/source/tree/ExpressionTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/Insertions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TypeTree"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lannotator/find/Insertions$TypeTree$TypeName;,
        Lannotator/find/Insertions$TypeTree$TypeParameterTT;,
        Lannotator/find/Insertions$TypeTree$WildcardTT;,
        Lannotator/find/Insertions$TypeTree$IdentifierTT;,
        Lannotator/find/Insertions$TypeTree$PrimitiveTypeTT;,
        Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;,
        Lannotator/find/Insertions$TypeTree$MemberSelectTT;,
        Lannotator/find/Insertions$TypeTree$ArrayTT;
    }
.end annotation


# static fields
.field private static primTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/code/TypeTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lannotator/find/Insertions$TypeTree;->primTags:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1191
    sget-object v0, Lannotator/find/Insertions$TypeTree;->primTags:Ljava/util/Map;

    const-string v1, "byte"

    sget-object v2, Lcom/sun/tools/javac/code/TypeTag;->BYTE:Lcom/sun/tools/javac/code/TypeTag;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v0, Lannotator/find/Insertions$TypeTree;->primTags:Ljava/util/Map;

    const-string v1, "char"

    sget-object v2, Lcom/sun/tools/javac/code/TypeTag;->CHAR:Lcom/sun/tools/javac/code/TypeTag;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v0, Lannotator/find/Insertions$TypeTree;->primTags:Ljava/util/Map;

    const-string v1, "short"

    sget-object v2, Lcom/sun/tools/javac/code/TypeTag;->SHORT:Lcom/sun/tools/javac/code/TypeTag;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    sget-object v0, Lannotator/find/Insertions$TypeTree;->primTags:Ljava/util/Map;

    const-string v1, "long"

    sget-object v2, Lcom/sun/tools/javac/code/TypeTag;->LONG:Lcom/sun/tools/javac/code/TypeTag;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    sget-object v0, Lannotator/find/Insertions$TypeTree;->primTags:Ljava/util/Map;

    const-string v1, "float"

    sget-object v2, Lcom/sun/tools/javac/code/TypeTag;->FLOAT:Lcom/sun/tools/javac/code/TypeTag;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v0, Lannotator/find/Insertions$TypeTree;->primTags:Ljava/util/Map;

    const-string v1, "int"

    sget-object v2, Lcom/sun/tools/javac/code/TypeTag;->INT:Lcom/sun/tools/javac/code/TypeTag;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    sget-object v0, Lannotator/find/Insertions$TypeTree;->primTags:Ljava/util/Map;

    const-string v1, "double"

    sget-object v2, Lcom/sun/tools/javac/code/TypeTag;->DOUBLE:Lcom/sun/tools/javac/code/TypeTag;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    sget-object v0, Lannotator/find/Insertions$TypeTree;->primTags:Ljava/util/Map;

    const-string v1, "boolean"

    sget-object v2, Lcom/sun/tools/javac/code/TypeTag;->BOOLEAN:Lcom/sun/tools/javac/code/TypeTag;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    return-void
.end method

.method private static addPrefix(Lannotator/find/Insertions$TypeTree;Lannotator/find/Insertions$TypeTree;)Lannotator/find/Insertions$TypeTree;
    .locals 4
    .param p0, "t"    # Lannotator/find/Insertions$TypeTree;
    .param p1, "prefix"    # Lannotator/find/Insertions$TypeTree;

    .line 1362
    sget-object v0, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {p0}, Lannotator/find/Insertions$TypeTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 1373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1364
    :sswitch_0
    move-object v0, p0

    check-cast v0, Lannotator/find/Insertions$TypeTree$IdentifierTT;

    .line 1365
    .local v0, "it":Lannotator/find/Insertions$TypeTree$IdentifierTT;
    new-instance v1, Lannotator/find/Insertions$TypeTree$MemberSelectTT;

    invoke-virtual {v0}, Lannotator/find/Insertions$TypeTree$IdentifierTT;->getName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lannotator/find/Insertions$TypeTree$MemberSelectTT;-><init>(Lannotator/find/Insertions$TypeTree;Ljavax/lang/model/element/Name;)V

    return-object v1

    .line 1370
    .end local v0    # "it":Lannotator/find/Insertions$TypeTree$IdentifierTT;
    :sswitch_1
    move-object v0, p0

    check-cast v0, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;

    .line 1371
    .local v0, "pt":Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;
    new-instance v1, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;

    invoke-virtual {v0}, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;->getType()Lannotator/find/Insertions$TypeTree;

    move-result-object v2

    invoke-static {v2, p1}, Lannotator/find/Insertions$TypeTree;->addPrefix(Lannotator/find/Insertions$TypeTree;Lannotator/find/Insertions$TypeTree;)Lannotator/find/Insertions$TypeTree;

    move-result-object v2

    invoke-virtual {v0}, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;-><init>(Lannotator/find/Insertions$TypeTree;Ljava/util/List;)V

    return-object v1

    .line 1367
    .end local v0    # "pt":Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;
    :sswitch_2
    move-object v0, p0

    check-cast v0, Lannotator/find/Insertions$TypeTree$MemberSelectTT;

    .line 1368
    .local v0, "lt":Lannotator/find/Insertions$TypeTree$MemberSelectTT;
    new-instance v1, Lannotator/find/Insertions$TypeTree$MemberSelectTT;

    invoke-virtual {v0}, Lannotator/find/Insertions$TypeTree$MemberSelectTT;->getExpression()Lannotator/find/Insertions$TypeTree;

    move-result-object v2

    invoke-static {v2, p1}, Lannotator/find/Insertions$TypeTree;->addPrefix(Lannotator/find/Insertions$TypeTree;Lannotator/find/Insertions$TypeTree;)Lannotator/find/Insertions$TypeTree;

    move-result-object v2

    invoke-virtual {v0}, Lannotator/find/Insertions$TypeTree$MemberSelectTT;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lannotator/find/Insertions$TypeTree$MemberSelectTT;-><init>(Lannotator/find/Insertions$TypeTree;Ljavax/lang/model/element/Name;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method static fromJCTree(Lcom/sun/tools/javac/tree/JCTree;)Lannotator/find/Insertions$TypeTree;
    .locals 6
    .param p0, "jt"    # Lcom/sun/tools/javac/tree/JCTree;

    .line 1202
    if-eqz p0, :cond_1

    .line 1203
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/JCTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 1204
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v1, Lannotator/find/Insertions$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v0}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 1209
    :pswitch_0
    new-instance v1, Lannotator/find/Insertions$TypeTree$IdentifierTT;

    move-object v2, p0

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1210
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->getSimpleName()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lannotator/find/Insertions$TypeTree$IdentifierTT;-><init>(Ljava/lang/String;)V

    .line 1209
    return-object v1

    .line 1220
    :pswitch_1
    new-instance v1, Lannotator/find/Insertions$TypeTree$WildcardTT;

    move-object v2, p0

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    .line 1221
    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->getBound()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v2

    invoke-static {v2}, Lannotator/find/Insertions$TypeTree;->fromJCTree(Lcom/sun/tools/javac/tree/JCTree;)Lannotator/find/Insertions$TypeTree;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lannotator/find/Insertions$TypeTree$WildcardTT;-><init>(Lcom/sun/source/tree/Tree$Kind;Lannotator/find/Insertions$TypeTree;)V

    .line 1220
    return-object v1

    .line 1206
    :pswitch_2
    move-object v1, p0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;

    .line 1207
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;->getUnderlyingType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 1206
    invoke-static {v1}, Lannotator/find/Insertions$TypeTree;->fromJCTree(Lcom/sun/tools/javac/tree/JCTree;)Lannotator/find/Insertions$TypeTree;

    move-result-object v1

    return-object v1

    .line 1223
    :pswitch_3
    new-instance v1, Lannotator/find/Insertions$TypeTree$WildcardTT;

    invoke-direct {v1}, Lannotator/find/Insertions$TypeTree$WildcardTT;-><init>()V

    return-object v1

    .line 1225
    :pswitch_4
    move-object v1, p0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    .line 1226
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1227
    .local v1, "typeArgs":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1228
    .local v2, "args":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/Tree;>;"
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1229
    .local v4, "typeArg":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    invoke-static {v4}, Lannotator/find/Insertions$TypeTree;->fromJCTree(Lcom/sun/tools/javac/tree/JCTree;)Lannotator/find/Insertions$TypeTree;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    .end local v4    # "typeArg":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    goto :goto_0

    .line 1231
    :cond_0
    new-instance v3, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;

    move-object v4, p0

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    .line 1232
    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->getType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v4

    invoke-static {v4}, Lannotator/find/Insertions$TypeTree;->fromJCTree(Lcom/sun/tools/javac/tree/JCTree;)Lannotator/find/Insertions$TypeTree;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;-><init>(Lannotator/find/Insertions$TypeTree;Ljava/util/List;)V

    .line 1231
    return-object v3

    .line 1215
    .end local v1    # "typeArgs":Lcom/sun/tools/javac/util/List;, "Lcom/sun/tools/javac/util/List<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    .end local v2    # "args":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/Tree;>;"
    :pswitch_5
    new-instance v1, Lannotator/find/Insertions$TypeTree$MemberSelectTT;

    move-object v2, p0

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 1216
    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-static {v2}, Lannotator/find/Insertions$TypeTree;->fromJCTree(Lcom/sun/tools/javac/tree/JCTree;)Lannotator/find/Insertions$TypeTree;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 1217
    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->getIdentifier()Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lannotator/find/Insertions$TypeTree$MemberSelectTT;-><init>(Lannotator/find/Insertions$TypeTree;Ljavax/lang/model/element/Name;)V

    .line 1215
    return-object v1

    .line 1212
    :pswitch_6
    new-instance v1, Lannotator/find/Insertions$TypeTree$ArrayTT;

    move-object v2, p0

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    .line 1213
    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->getType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v2

    invoke-static {v2}, Lannotator/find/Insertions$TypeTree;->fromJCTree(Lcom/sun/tools/javac/tree/JCTree;)Lannotator/find/Insertions$TypeTree;

    move-result-object v2

    invoke-direct {v1, v2}, Lannotator/find/Insertions$TypeTree$ArrayTT;-><init>(Lannotator/find/Insertions$TypeTree;)V

    .line 1212
    return-object v1

    .line 1238
    .end local v0    # "kind":Lcom/sun/source/tree/Tree$Kind;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static fromJavacType(Lcom/sun/tools/javac/code/Type;)Lannotator/find/Insertions$TypeTree;
    .locals 1
    .param p0, "type"    # Lcom/sun/tools/javac/code/Type;

    .line 1284
    invoke-static {p0}, Lannotator/find/Insertions$TypeTree;->javacTypeToType(Lcom/sun/tools/javac/code/Type;)Lscenelib/type/Type;

    move-result-object v0

    invoke-static {v0}, Lannotator/find/Insertions$TypeTree;->fromType(Lscenelib/type/Type;)Lannotator/find/Insertions$TypeTree;

    move-result-object v0

    return-object v0
.end method

.method static fromType(Lscenelib/type/Type;)Lannotator/find/Insertions$TypeTree;
    .locals 11
    .param p0, "type"    # Lscenelib/type/Type;

    .line 1243
    sget-object v0, Lannotator/find/Insertions$3;->$SwitchMap$scenelib$type$Type$Kind:[I

    invoke-virtual {p0}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lscenelib/type/Type$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1278
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown type kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :pswitch_0
    move-object v0, p0

    check-cast v0, Lscenelib/type/DeclaredType;

    .line 1256
    .local v0, "dtype":Lscenelib/type/DeclaredType;
    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->isWildcard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    new-instance v1, Lannotator/find/Insertions$TypeTree$WildcardTT;

    invoke-direct {v1}, Lannotator/find/Insertions$TypeTree$WildcardTT;-><init>()V

    return-object v1

    .line 1259
    :cond_0
    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1260
    .local v1, "dname":Ljava/lang/String;
    sget-object v2, Lannotator/find/Insertions$TypeTree;->primTags:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/TypeTag;

    .line 1261
    .local v2, "typeTag":Lcom/sun/tools/javac/code/TypeTag;
    if-nez v2, :cond_4

    .line 1262
    new-instance v3, Lannotator/find/Insertions$TypeTree$IdentifierTT;

    invoke-direct {v3, v1}, Lannotator/find/Insertions$TypeTree$IdentifierTT;-><init>(Ljava/lang/String;)V

    .line 1263
    .local v3, "base":Lannotator/find/Insertions$TypeTree;
    move-object v4, v3

    .line 1264
    .local v4, "ret":Lannotator/find/Insertions$TypeTree;
    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    .line 1265
    .local v5, "params":Ljava/util/List;, "Ljava/util/List<Lscenelib/type/Type;>;"
    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getInnerType()Lscenelib/type/DeclaredType;

    move-result-object v6

    .line 1266
    .local v6, "inner":Lscenelib/type/DeclaredType;
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1267
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1268
    .local v7, "typeArgs":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lscenelib/type/Type;

    .local v9, "t":Lscenelib/type/Type;
    invoke-static {v9}, Lannotator/find/Insertions$TypeTree;->fromType(Lscenelib/type/Type;)Lannotator/find/Insertions$TypeTree;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1269
    .end local v9    # "t":Lscenelib/type/Type;
    :cond_1
    new-instance v8, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;

    invoke-direct {v8, v3, v7}, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;-><init>(Lannotator/find/Insertions$TypeTree;Ljava/util/List;)V

    move-object v4, v8

    .line 1271
    .end local v7    # "typeArgs":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/Tree;>;"
    :cond_2
    if-nez v6, :cond_3

    move-object v7, v4

    goto :goto_1

    :cond_3
    invoke-static {v6}, Lannotator/find/Insertions$TypeTree;->fromType(Lscenelib/type/Type;)Lannotator/find/Insertions$TypeTree;

    move-result-object v7

    invoke-static {v7, v4}, Lannotator/find/Insertions$TypeTree;->addPrefix(Lannotator/find/Insertions$TypeTree;Lannotator/find/Insertions$TypeTree;)Lannotator/find/Insertions$TypeTree;

    move-result-object v7

    :goto_1
    return-object v7

    .line 1273
    .end local v3    # "base":Lannotator/find/Insertions$TypeTree;
    .end local v4    # "ret":Lannotator/find/Insertions$TypeTree;
    .end local v5    # "params":Ljava/util/List;, "Ljava/util/List<Lscenelib/type/Type;>;"
    .end local v6    # "inner":Lscenelib/type/DeclaredType;
    :cond_4
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/TypeTag;->getPrimitiveTypeKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    .line 1274
    .local v3, "typeKind":Ljavax/lang/model/type/TypeKind;
    new-instance v4, Lannotator/find/Insertions$TypeTree$PrimitiveTypeTT;

    invoke-direct {v4, v3}, Lannotator/find/Insertions$TypeTree$PrimitiveTypeTT;-><init>(Ljavax/lang/model/type/TypeKind;)V

    return-object v4

    .line 1249
    .end local v0    # "dtype":Lscenelib/type/DeclaredType;
    .end local v1    # "dname":Ljava/lang/String;
    .end local v2    # "typeTag":Lcom/sun/tools/javac/code/TypeTag;
    .end local v3    # "typeKind":Ljavax/lang/model/type/TypeKind;
    :pswitch_1
    move-object v0, p0

    check-cast v0, Lscenelib/type/BoundedType;

    .line 1250
    .local v0, "btype":Lscenelib/type/BoundedType;
    invoke-virtual {v0}, Lscenelib/type/BoundedType;->getBoundKind()Lscenelib/type/BoundedType$BoundKind;

    move-result-object v1

    .line 1251
    .local v1, "bk":Lscenelib/type/BoundedType$BoundKind;
    invoke-virtual {v0}, Lscenelib/type/BoundedType;->getName()Lscenelib/type/DeclaredType;

    move-result-object v2

    invoke-virtual {v2}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1252
    .local v2, "bname":Ljava/lang/String;
    invoke-virtual {v0}, Lscenelib/type/BoundedType;->getBound()Lscenelib/type/Type;

    move-result-object v3

    invoke-static {v3}, Lannotator/find/Insertions$TypeTree;->fromType(Lscenelib/type/Type;)Lannotator/find/Insertions$TypeTree;

    move-result-object v3

    .line 1253
    .local v3, "bound":Lannotator/find/Insertions$TypeTree;
    new-instance v4, Lannotator/find/Insertions$TypeTree$TypeParameterTT;

    invoke-direct {v4, v2, v1, v3}, Lannotator/find/Insertions$TypeTree$TypeParameterTT;-><init>(Ljava/lang/String;Lscenelib/type/BoundedType$BoundKind;Lannotator/find/Insertions$TypeTree;)V

    return-object v4

    .line 1245
    .end local v0    # "btype":Lscenelib/type/BoundedType;
    .end local v1    # "bk":Lscenelib/type/BoundedType$BoundKind;
    .end local v2    # "bname":Ljava/lang/String;
    .end local v3    # "bound":Lannotator/find/Insertions$TypeTree;
    :pswitch_2
    move-object v0, p0

    check-cast v0, Lscenelib/type/ArrayType;

    .line 1246
    .local v0, "atype":Lscenelib/type/ArrayType;
    invoke-virtual {v0}, Lscenelib/type/ArrayType;->getComponentType()Lscenelib/type/Type;

    move-result-object v1

    invoke-static {v1}, Lannotator/find/Insertions$TypeTree;->fromType(Lscenelib/type/Type;)Lannotator/find/Insertions$TypeTree;

    move-result-object v1

    .line 1247
    .local v1, "componentType":Lannotator/find/Insertions$TypeTree;
    new-instance v2, Lannotator/find/Insertions$TypeTree$ArrayTT;

    invoke-direct {v2, v1}, Lannotator/find/Insertions$TypeTree$ArrayTT;-><init>(Lannotator/find/Insertions$TypeTree;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static javacTypeToType(Lcom/sun/tools/javac/code/Type;)Lscenelib/type/Type;
    .locals 7
    .param p0, "jtype"    # Lcom/sun/tools/javac/code/Type;

    .line 1289
    sget-object v0, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1356
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Check your setup."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :pswitch_0
    new-instance v0, Lscenelib/type/DeclaredType;

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/type/DeclaredType;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1344
    :pswitch_1
    new-instance v0, Lscenelib/type/DeclaredType;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/type/DeclaredType;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1334
    :pswitch_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "UNION case not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1331
    :pswitch_3
    new-instance v0, Lscenelib/type/DeclaredType;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/type/DeclaredType;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1322
    :pswitch_4
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$TypeVar;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-static {v0}, Lannotator/find/Insertions$TypeTree;->javacTypeToType(Lcom/sun/tools/javac/code/Type;)Lscenelib/type/Type;

    move-result-object v0

    .line 1323
    .local v0, "upperBound":Lscenelib/type/Type;
    invoke-virtual {v0}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v1

    sget-object v2, Lscenelib/type/Type$Kind;->DECLARED:Lscenelib/type/Type$Kind;

    if-ne v1, v2, :cond_0

    .line 1324
    new-instance v1, Lscenelib/type/BoundedType;

    new-instance v2, Lscenelib/type/DeclaredType;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscenelib/type/DeclaredType;-><init>(Ljava/lang/String;)V

    sget-object v3, Lscenelib/type/BoundedType$BoundKind;->EXTENDS:Lscenelib/type/BoundedType$BoundKind;

    move-object v4, v0

    check-cast v4, Lscenelib/type/DeclaredType;

    invoke-direct {v1, v2, v3, v4}, Lscenelib/type/BoundedType;-><init>(Lscenelib/type/DeclaredType;Lscenelib/type/BoundedType$BoundKind;Lscenelib/type/DeclaredType;)V

    return-object v1

    .line 1327
    :cond_0
    return-object v0

    .line 1312
    .end local v0    # "upperBound":Lscenelib/type/Type;
    :pswitch_5
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 1314
    .local v0, "wildcard":Lcom/sun/tools/javac/code/Type$WildcardType;
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$WildcardType;->kind:Lcom/sun/tools/javac/code/BoundKind;

    sget-object v2, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    if-ne v1, v2, :cond_1

    .line 1315
    new-instance v1, Lscenelib/type/DeclaredType;

    const-string v2, "?"

    invoke-direct {v1, v2}, Lscenelib/type/DeclaredType;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1317
    :cond_1
    new-instance v1, Lscenelib/type/BoundedType;

    new-instance v2, Lscenelib/type/DeclaredType;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscenelib/type/DeclaredType;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sun/tools/javac/code/Type$WildcardType;->kind:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v4, v0, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    .line 1319
    invoke-static {v4}, Lannotator/find/Insertions$TypeTree;->javacTypeToType(Lcom/sun/tools/javac/code/Type;)Lscenelib/type/Type;

    move-result-object v4

    check-cast v4, Lscenelib/type/DeclaredType;

    invoke-direct {v1, v2, v3, v4}, Lscenelib/type/BoundedType;-><init>(Lscenelib/type/DeclaredType;Lcom/sun/tools/javac/code/BoundKind;Lscenelib/type/DeclaredType;)V

    .line 1317
    return-object v1

    .line 1295
    .end local v0    # "wildcard":Lcom/sun/tools/javac/code/Type$WildcardType;
    :pswitch_6
    move-object v0, p0

    .line 1296
    .local v0, "t":Lcom/sun/tools/javac/code/Type;
    const/4 v1, 0x0

    .line 1298
    .local v1, "d":Lscenelib/type/DeclaredType;
    :cond_2
    move-object v2, v1

    .line 1299
    .local v2, "d0":Lscenelib/type/DeclaredType;
    move-object v3, v0

    check-cast v3, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 1301
    .local v3, "ct":Lcom/sun/tools/javac/code/Type$ClassType;
    new-instance v4, Lscenelib/type/DeclaredType;

    iget-object v5, v3, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lscenelib/type/DeclaredType;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 1302
    invoke-virtual {v1, v2}, Lscenelib/type/DeclaredType;->setInnerType(Lscenelib/type/DeclaredType;)V

    .line 1303
    move-object v2, v1

    .line 1304
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Type;

    .line 1305
    .local v5, "a":Lcom/sun/tools/javac/code/Type;
    invoke-static {v5}, Lannotator/find/Insertions$TypeTree;->javacTypeToType(Lcom/sun/tools/javac/code/Type;)Lscenelib/type/Type;

    move-result-object v6

    invoke-virtual {v1, v6}, Lscenelib/type/DeclaredType;->addTypeParameter(Lscenelib/type/Type;)V

    .line 1306
    .end local v5    # "a":Lcom/sun/tools/javac/code/Type;
    goto :goto_0

    .line 1307
    :cond_3
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1308
    .end local v2    # "d0":Lscenelib/type/DeclaredType;
    .end local v3    # "ct":Lcom/sun/tools/javac/code/Type$ClassType;
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-eq v2, v3, :cond_2

    .line 1309
    return-object v1

    .line 1291
    .end local v0    # "t":Lcom/sun/tools/javac/code/Type;
    .end local v1    # "d":Lscenelib/type/DeclaredType;
    :pswitch_7
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/code/Type$ArrayType;

    .line 1292
    .local v0, "arraytype":Lcom/sun/tools/javac/code/Type$ArrayType;
    new-instance v1, Lscenelib/type/ArrayType;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    invoke-static {v2}, Lannotator/find/Insertions$TypeTree;->javacTypeToType(Lcom/sun/tools/javac/code/Type;)Lscenelib/type/Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lscenelib/type/ArrayType;-><init>(Lscenelib/type/Type;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
