.class public final enum Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;
.super Ljava/lang/Enum;
.source "MemberSubstitution.java"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$Replacement;
.implements Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$Replacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;",
        ">;",
        "Lnet/bytebuddy/asm/MemberSubstitution$Replacement;",
        "Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1892
    new-instance v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;->INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;

    .line 1887
    filled-new-array {v0}, [Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;->$VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1887
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1887
    const-class v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;
    .locals 1

    .line 1887
    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;->$VALUES:[Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;

    return-object v0
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Z)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
    .locals 1
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "fieldDescription"    # Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    .param p4, "writeAccess"    # Z

    .line 1908
    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;->INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

    return-object v0
.end method

.method public bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
    .locals 1
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p4, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p5, "invocationType"    # Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    .line 1919
    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;->INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

    return-object v0
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "typePool"    # Lnet/bytebuddy/pool/TypePool;

    .line 1898
    return-object p0
.end method
