.class public final enum Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;
.super Ljava/lang/Enum;
.source "MemberSubstitution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$Replacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InvocationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

.field public static final enum OTHER:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

.field public static final enum SUPER:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

.field public static final enum VIRTUAL:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1832
    new-instance v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    const-string v1, "VIRTUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->VIRTUAL:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    .line 1837
    new-instance v1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    const-string v2, "SUPER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->SUPER:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    .line 1842
    new-instance v2, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    const-string v3, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->OTHER:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    .line 1827
    filled-new-array {v0, v1, v2}, [Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->$VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1827
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method protected static of(ILnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;
    .locals 1
    .param p0, "opcode"    # I
    .param p1, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 1852
    packed-switch p0, :pswitch_data_0

    .line 1861
    :pswitch_0
    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->OTHER:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    return-object v0

    .line 1857
    :pswitch_1
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->SUPER:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->OTHER:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    :goto_0
    return-object v0

    .line 1855
    :pswitch_2
    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->VIRTUAL:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1827
    const-class v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;
    .locals 1

    .line 1827
    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->$VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    return-object v0
.end method


# virtual methods
.method protected matches(ZZ)Z
    .locals 2
    .param p1, "includeVirtualCalls"    # Z
    .param p2, "includeSuperCalls"    # Z

    .line 1873
    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$1;->$SwitchMap$net$bytebuddy$asm$MemberSubstitution$Replacement$InvocationType:[I

    invoke-virtual {p0}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1879
    const/4 v0, 0x1

    return v0

    .line 1877
    :pswitch_0
    return p2

    .line 1875
    :pswitch_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
