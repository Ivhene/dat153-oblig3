.class public final enum Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;
.super Ljava/lang/Enum;
.source "PrivilegedMemberLookupAction.java"

# interfaces
.implements Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;",
        ">;",
        "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

.field private static final DEFAULT_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field public static final enum FOR_DECLARED_CONSTRUCTOR:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

.field public static final enum FOR_DECLARED_METHOD:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

.field public static final enum FOR_PUBLIC_CONSTRUCTOR:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

.field public static final enum FOR_PUBLIC_METHOD:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

.field private static final TYPE_FIELD:Ljava/lang/String; = "type"


# instance fields
.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 49
    new-instance v8, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    const-string v1, "FOR_PUBLIC_METHOD"

    const/4 v2, 0x0

    const-string v3, "getMethod"

    const-string v4, "name"

    const-class v5, Ljava/lang/String;

    const-string v6, "parameters"

    const-class v7, [Ljava/lang/Class;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v8, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_PUBLIC_METHOD:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    .line 54
    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    const-string v10, "FOR_DECLARED_METHOD"

    const/4 v11, 0x1

    const-string v12, "getDeclaredMethod"

    const-string v13, "name"

    const-class v14, Ljava/lang/String;

    const-string v15, "parameters"

    const-class v16, [Ljava/lang/Class;

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_DECLARED_METHOD:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    .line 59
    new-instance v7, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    const-string v2, "FOR_PUBLIC_CONSTRUCTOR"

    const/4 v3, 0x2

    const-string v4, "getConstructor"

    const-string v5, "parameters"

    const-class v6, [Ljava/lang/Class;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v7, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_PUBLIC_CONSTRUCTOR:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    .line 64
    new-instance v1, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    const-string v10, "FOR_DECLARED_CONSTRUCTOR"

    const/4 v11, 0x3

    const-string v12, "getDeclaredConstructor"

    const-string v13, "parameters"

    const-class v14, [Ljava/lang/Class;

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_DECLARED_CONSTRUCTOR:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    .line 44
    filled-new-array {v8, v0, v7, v1}, [Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    .line 74
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    .line 75
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 76
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->DEFAULT_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 74
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 95
    .local p5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    :try_start_0
    new-instance p1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class p2, Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-virtual {p2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    nop

    .line 101
    invoke-static {p4, p5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->fields:Ljava/util/Map;

    .line 102
    return-void

    .line 98
    :catch_0
    move-exception p1

    .line 99
    .local p1, "exception":Ljava/lang/NoSuchMethodException;
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not locate method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "firstField"    # Ljava/lang/String;
    .param p6, "secondField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 113
    .local p5, "firstType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p7, "secondType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    :try_start_0
    new-instance p1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class p2, Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p7, v0, v1

    invoke-virtual {p2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    nop

    .line 119
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->fields:Ljava/util/Map;

    .line 120
    invoke-interface {p1, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-interface {p1, p6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void

    .line 116
    :catch_0
    move-exception p1

    .line 117
    .local p1, "exception":Ljava/lang/NoSuchMethodException;
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not locate method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;
    .locals 3
    .param p0, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 131
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_PUBLIC_CONSTRUCTOR:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_DECLARED_CONSTRUCTOR:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    :goto_0
    return-object v0

    .line 135
    :cond_1
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isMethod()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_PUBLIC_METHOD:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    goto :goto_1

    :cond_2
    sget-object v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->FOR_DECLARED_METHOD:Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    :goto_1
    return-object v0

    .line 140
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot load constant for type initializer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;
    .locals 1

    .line 44
    sget-object v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;

    return-object v0
.end method


# virtual methods
.method public make(Ljava/lang/String;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/MethodAccessorFactory;)Lnet/bytebuddy/dynamic/DynamicType;
    .locals 11
    .param p1, "auxiliaryTypeName"    # Ljava/lang/String;
    .param p2, "classFileVersion"    # Lnet/bytebuddy/ClassFileVersion;
    .param p3, "methodAccessorFactory"    # Lnet/bytebuddy/implementation/MethodAccessorFactory;

    .line 150
    sget-object v0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->DEFAULT_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v0

    const-string v1, "type"

    invoke-static {v1}, Lnet/bytebuddy/implementation/FieldAccessor;->ofField(Ljava/lang/String;)Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;->setsArgumentAt(I)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object v0

    .line 151
    .local v0, "constructor":Lnet/bytebuddy/implementation/Implementation$Composable;
    const/4 v2, 0x1

    .line 152
    .local v2, "index":I
    iget-object v4, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->fields:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 153
    .local v5, "field":Ljava/lang/String;
    invoke-static {v5}, Lnet/bytebuddy/implementation/FieldAccessor;->ofField(Ljava/lang/String;)Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "index":I
    .local v7, "index":I
    invoke-interface {v6, v2}, Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;->setsArgumentAt(I)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/implementation/Implementation$Composable;->andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object v0

    .line 154
    .end local v5    # "field":Ljava/lang/String;
    move v2, v7

    goto :goto_0

    .line 155
    .end local v7    # "index":I
    .restart local v2    # "index":I
    :cond_0
    new-instance v4, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v4, p2}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;)V

    sget-object v5, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    .line 156
    invoke-virtual {v4, v5}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v4

    const-class v5, Ljava/security/PrivilegedExceptionAction;

    sget-object v6, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    .line 157
    invoke-virtual {v4, v5, v6}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v4

    .line 158
    invoke-interface {v4, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v4

    sget-object v5, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->DEFAULT_TYPE_MODIFIER:[Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    .line 159
    invoke-interface {v4, v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->modifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v7, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v7, v6, v3

    .line 160
    invoke-interface {v4, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineConstructor([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v4

    const-class v6, Ljava/lang/Class;

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->fields:Ljava/util/Map;

    .line 161
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6, v7}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v4

    .line 162
    invoke-interface {v4, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v4

    .line 163
    const-string v6, "run"

    invoke-static {v6}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v4, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v4

    iget-object v6, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 164
    invoke-static {v6}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v6

    .line 165
    invoke-virtual {v6, v1}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onField(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->fields:Ljava/util/Map;

    .line 166
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Lnet/bytebuddy/implementation/MethodCall;->withField([Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v6

    .line 164
    invoke-interface {v4, v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v4

    const-class v6, Ljava/lang/Class;

    new-array v7, v5, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;

    sget-object v8, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v8, v7, v3

    .line 167
    invoke-interface {v4, v1, v6, v7}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->defineField(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;

    move-result-object v1

    .line 168
    .local v1, "builder":Lnet/bytebuddy/dynamic/DynamicType$Builder;, "Lnet/bytebuddy/dynamic/DynamicType$Builder<*>;"
    iget-object v4, p0, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->fields:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 169
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Type;

    new-array v9, v5, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;

    sget-object v10, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v10, v9, v3

    invoke-interface {v1, v7, v8, v9}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineField(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;

    move-result-object v1

    .line 170
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    goto :goto_1

    .line 171
    :cond_1
    invoke-interface {v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v3

    return-object v3
.end method
