.class public abstract enum Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;
.super Ljava/lang/Enum;
.source "Super.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Super;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Instantiation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;

.field public static final enum CONSTRUCTOR:Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;

.field private static final CONSTRUCTOR_PARAMETERS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final IGNORE_FINALIZER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final SERIALIZABLE_PROXY:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field public static final enum UNSAFE:Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 126
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation$1;

    const-string v1, "CONSTRUCTOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->CONSTRUCTOR:Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;

    .line 143
    new-instance v1, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation$2;

    const-string v3, "UNSAFE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->UNSAFE:Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;

    .line 120
    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;

    .line 174
    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/Super;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    .line 175
    .local v0, "annotationProperties":Lnet/bytebuddy/description/method/MethodList;, "Lnet/bytebuddy/description/method/MethodList<Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;>;"
    const-string v1, "ignoreFinalizer"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->IGNORE_FINALIZER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 176
    const-string v1, "serializableProxy"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->SERIALIZABLE_PROXY:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 177
    const-string v1, "constructorParameters"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->CONSTRUCTOR_PARAMETERS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 178
    .end local v0    # "annotationProperties":Lnet/bytebuddy/description/method/MethodList;, "Lnet/bytebuddy/description/method/MethodList<Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;>;"
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bind/annotation/Super$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/bytebuddy/implementation/bind/annotation/Super$1;

    .line 120
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 120
    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->CONSTRUCTOR_PARAMETERS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$200()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 120
    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->IGNORE_FINALIZER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$300()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 120
    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->SERIALIZABLE_PROXY:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 120
    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;
    .locals 1

    .line 120
    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->$VALUES:[Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;

    return-object v0
.end method


# virtual methods
.method protected abstract proxyFor(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/implementation/Implementation$Target;",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "Lnet/bytebuddy/implementation/bind/annotation/Super;",
            ">;)",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
        }
    .end annotation
.end method
