.class public final enum Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;
.super Ljava/lang/Enum;
.source "MemberSubstitution.java"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OfImplicitPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;",
        ">;",
        "Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 706
    new-instance v0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;->INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    .line 701
    filled-new-array {v0}, [Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;->$VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 701
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 701
    const-class v0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;
    .locals 1

    .line 701
    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;->$VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$OfImplicitPool;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/pool/TypePool;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "typePool"    # Lnet/bytebuddy/pool/TypePool;

    .line 712
    return-object p3
.end method
