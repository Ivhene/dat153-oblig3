.class public abstract enum Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;
.super Ljava/lang/Enum;
.source "AnnotationValueFilter.java"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
.implements Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;",
        ">;",
        "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;",
        "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

.field public static final enum APPEND_DEFAULTS:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

.field public static final enum SKIP_DEFAULTS:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 85
    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default$1;

    const-string v1, "SKIP_DEFAULTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;->SKIP_DEFAULTS:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    .line 96
    new-instance v1, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default$2;

    const-string v3, "APPEND_DEFAULTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;->APPEND_DEFAULTS:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    .line 80
    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;->$VALUES:[Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/attribute/AnnotationValueFilter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$1;

    .line 80
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 80
    const-class v0, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;
    .locals 1

    .line 80
    sget-object v0, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;->$VALUES:[Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    return-object v0
.end method


# virtual methods
.method public on(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .locals 0
    .param p1, "fieldDescription"    # Lnet/bytebuddy/description/field/FieldDescription;

    .line 114
    return-object p0
.end method

.method public on(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .locals 0
    .param p1, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 121
    return-object p0
.end method

.method public on(Lnet/bytebuddy/description/type/RecordComponentDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .locals 0
    .param p1, "recordComponentDescription"    # Lnet/bytebuddy/description/type/RecordComponentDescription;

    .line 128
    return-object p0
.end method

.method public on(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 107
    return-object p0
.end method
