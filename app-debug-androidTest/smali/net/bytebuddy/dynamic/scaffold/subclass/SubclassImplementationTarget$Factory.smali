.class public final enum Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;
.super Ljava/lang/Enum;
.source "SubclassImplementationTarget.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Target$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;",
        ">;",
        "Lnet/bytebuddy/implementation/Implementation$Target$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;

.field public static final enum LEVEL_TYPE:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;

.field public static final enum SUPER_CLASS:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;


# instance fields
.field private final originTypeResolver:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 145
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;

    const/4 v1, 0x0

    sget-object v2, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;->SUPER_CLASS:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;

    const-string v3, "SUPER_CLASS"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;-><init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;->SUPER_CLASS:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;

    .line 150
    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;

    const/4 v2, 0x1

    sget-object v3, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;->LEVEL_TYPE:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;

    const-string v4, "LEVEL_TYPE"

    invoke-direct {v1, v4, v2, v3}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;-><init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;)V

    sput-object v1, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;->LEVEL_TYPE:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;

    .line 140
    filled-new-array {v0, v1}, [Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;)V
    .locals 0
    .param p3, "originTypeResolver"    # Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;",
            ")V"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;->originTypeResolver:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;

    .line 164
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 140
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;
    .locals 1

    .line 140
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/implementation/Implementation$Target;
    .locals 3
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "methodGraph"    # Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .param p3, "classFileVersion"    # Lnet/bytebuddy/ClassFileVersion;

    .line 170
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget;

    invoke-static {p3}, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;->of(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;->originTypeResolver:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;)V

    return-object v0
.end method
