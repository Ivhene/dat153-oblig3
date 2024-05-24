.class public enum Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;
.super Ljava/lang/Enum;
.source "AnnotationDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "RenderingDispatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

.field public static final CURRENT:Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

.field public static final enum JAVA_14_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

.field public static final enum LEGACY_VM:Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 141
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

    const-string v1, "LEGACY_VM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->LEGACY_VM:Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

    .line 146
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher$1;

    const-string v3, "JAVA_14_CAPABLE_VM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher$1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->JAVA_14_CAPABLE_VM:Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

    .line 136
    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

    .line 164
    sget-object v2, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v2}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v2

    .line 165
    .local v2, "classFileVersion":Lnet/bytebuddy/ClassFileVersion;
    sget-object v3, Lnet/bytebuddy/ClassFileVersion;->JAVA_V14:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    sput-object v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

    goto :goto_0

    .line 168
    :cond_0
    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

    .line 170
    .end local v2    # "classFileVersion":Lnet/bytebuddy/ClassFileVersion;
    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/annotation/AnnotationDescription$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/bytebuddy/description/annotation/AnnotationDescription$1;

    .line 136
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 136
    const-class v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;
    .locals 1

    .line 136
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

    return-object v0
.end method


# virtual methods
.method public appendPrefix(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 2
    .param p1, "toString"    # Ljava/lang/StringBuilder;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "count"    # I

    .line 180
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    return-void
.end method
