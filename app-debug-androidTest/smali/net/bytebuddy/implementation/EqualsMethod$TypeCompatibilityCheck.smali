.class public abstract enum Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;
.super Ljava/lang/Enum;
.source "EqualsMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/EqualsMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440c
    name = "TypeCompatibilityCheck"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

.field public static final enum EXACT:Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

.field protected static final GET_CLASS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field public static final enum SUBCLASS:Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 294
    new-instance v0, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck$1;

    const-string v1, "EXACT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;->EXACT:Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    .line 312
    new-instance v1, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck$2;

    const-string v3, "SUBCLASS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;->SUBCLASS:Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    .line 289
    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;->$VALUES:[Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    .line 326
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 327
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    .line 328
    const-string v1, "getClass"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 329
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;->GET_CLASS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 326
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/EqualsMethod$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/bytebuddy/implementation/EqualsMethod$1;

    .line 289
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 289
    const-class v0, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;
    .locals 1

    .line 289
    sget-object v0, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;->$VALUES:[Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    return-object v0
.end method


# virtual methods
.method protected abstract resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
