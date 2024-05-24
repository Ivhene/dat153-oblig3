.class public final Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "AccessibilityHierarchyProtos.java"

# interfaces
.implements Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHierarchyElementProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;",
        ">;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProtoOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_CLASS_NAME_FIELD_NUMBER:I = 0x1e

.field public static final ACCESSIBILITY_TRAVERSAL_AFTER_ID_FIELD_NUMBER:I = 0x20

.field public static final ACCESSIBILITY_TRAVERSAL_BEFORE_ID_FIELD_NUMBER:I = 0x1f

.field public static final ACTIONS_FIELD_NUMBER:I = 0x24

.field public static final BACKGROUND_DRAWABLE_COLOR_FIELD_NUMBER:I = 0x17

.field public static final BOUNDS_IN_SCREEN_FIELD_NUMBER:I = 0x14

.field public static final CAN_SCROLL_BACKWARD_FIELD_NUMBER:I = 0x11

.field public static final CAN_SCROLL_FORWARD_FIELD_NUMBER:I = 0x10

.field public static final CHECKABLE_FIELD_NUMBER:I = 0x12

.field public static final CHECKED_FIELD_NUMBER:I = 0x1d

.field public static final CHILD_IDS_FIELD_NUMBER:I = 0x3

.field public static final CLASS_NAME_FIELD_NUMBER:I = 0x5

.field public static final CLICKABLE_FIELD_NUMBER:I = 0xb

.field public static final CONTENT_DESCRIPTION_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

.field public static final DRAWING_ORDER_FIELD_NUMBER:I = 0x22

.field public static final EDITABLE_FIELD_NUMBER:I = 0xe

.field public static final ENABLED_FIELD_NUMBER:I = 0x19

.field public static final FOCUSABLE_FIELD_NUMBER:I = 0xd

.field public static final HAS_TOUCH_DELEGATE_FIELD_NUMBER:I = 0x13

.field public static final HINT_TEXT_COLOR_FIELD_NUMBER:I = 0x27

.field public static final HINT_TEXT_FIELD_NUMBER:I = 0x26

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final IMPORTANT_FOR_ACCESSIBILITY_FIELD_NUMBER:I = 0x9

.field public static final LABELED_BY_ID_FIELD_NUMBER:I = 0x1a

.field public static final LAYOUT_PARAMS_FIELD_NUMBER:I = 0x25

.field public static final LONG_CLICKABLE_FIELD_NUMBER:I = 0xc

.field public static final NONCLIPPED_HEIGHT_FIELD_NUMBER:I = 0x1b

.field public static final NONCLIPPED_WIDTH_FIELD_NUMBER:I = 0x1c

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x4

.field public static final PARENT_ID_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOURCE_NAME_FIELD_NUMBER:I = 0x6

.field public static final SCROLLABLE_FIELD_NUMBER:I = 0xf

.field public static final SUPERCLASSES_FIELD_NUMBER:I = 0x21

.field public static final TEXT_CHARACTER_LOCATIONS_FIELD_NUMBER:I = 0x28

.field public static final TEXT_COLOR_FIELD_NUMBER:I = 0x16

.field public static final TEXT_FIELD_NUMBER:I = 0x8

.field public static final TEXT_SIZE_FIELD_NUMBER:I = 0x15

.field public static final TOUCH_DELEGATE_BOUNDS_FIELD_NUMBER:I = 0x23

.field public static final TYPEFACE_STYLE_FIELD_NUMBER:I = 0x18

.field public static final VISIBLE_TO_USER_FIELD_NUMBER:I = 0xa


# instance fields
.field private accessibilityClassName_:Ljava/lang/String;

.field private accessibilityTraversalAfterId_:J

.field private accessibilityTraversalBeforeId_:J

.field private actions_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundDrawableColor_:I

.field private bitField0_:I

.field private bitField1_:I

.field private boundsInScreen_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

.field private canScrollBackward_:Z

.field private canScrollForward_:Z

.field private checkable_:Z

.field private checked_:Z

.field private childIds_:Lcom/google/protobuf/Internal$IntList;

.field private className_:Ljava/lang/String;

.field private clickable_:Z

.field private contentDescription_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

.field private drawingOrder_:I

.field private editable_:Z

.field private enabled_:Z

.field private focusable_:Z

.field private hasTouchDelegate_:Z

.field private hintTextColor_:I

.field private hintText_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

.field private id_:I

.field private importantForAccessibility_:Z

.field private labeledById_:J

.field private layoutParams_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

.field private longClickable_:Z

.field private memoizedIsInitialized:B

.field private nonclippedHeight_:I

.field private nonclippedWidth_:I

.field private packageName_:Ljava/lang/String;

.field private parentId_:I

.field private resourceName_:Ljava/lang/String;

.field private scrollable_:Z

.field private superclasses_:Lcom/google/protobuf/Internal$IntList;

.field private textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;",
            ">;"
        }
    .end annotation
.end field

.field private textColor_:I

.field private textSize_:F

.field private text_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

.field private touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;",
            ">;"
        }
    .end annotation
.end field

.field private typefaceStyle_:I

.field private visibleToUser_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9539
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;-><init>()V

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 9540
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->makeImmutable()V

    .line 9541
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5142
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 9055
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->memoizedIsInitialized:B

    .line 5143
    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->id_:I

    .line 5144
    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->parentId_:I

    .line 5145
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    .line 5146
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->packageName_:Ljava/lang/String;

    .line 5147
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->className_:Ljava/lang/String;

    .line 5148
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->resourceName_:Ljava/lang/String;

    .line 5149
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityClassName_:Ljava/lang/String;

    .line 5150
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    .line 5151
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5152
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5153
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5154
    return-void
.end method

.method static synthetic access$10000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearParentId()V

    return-void
.end method

.method static synthetic access$10100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;II)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setChildIds(II)V

    return-void
.end method

.method static synthetic access$10200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addChildIds(I)V

    return-void
.end method

.method static synthetic access$10300(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addAllChildIds(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearChildIds()V

    return-void
.end method

.method static synthetic access$10500(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Ljava/lang/String;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearPackageName()V

    return-void
.end method

.method static synthetic access$10700(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setPackageNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Ljava/lang/String;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setClassName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearClassName()V

    return-void
.end method

.method static synthetic access$11000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setClassNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Ljava/lang/String;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setResourceName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearResourceName()V

    return-void
.end method

.method static synthetic access$11300(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setResourceNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setContentDescription(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setContentDescription(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->mergeContentDescription(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearContentDescription()V

    return-void
.end method

.method static synthetic access$11800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;)V

    return-void
.end method

.method static synthetic access$12000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->mergeText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V

    return-void
.end method

.method static synthetic access$12100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearText()V

    return-void
.end method

.method static synthetic access$12200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Z

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setImportantForAccessibility(Z)V

    return-void
.end method

.method static synthetic access$12300(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearImportantForAccessibility()V

    return-void
.end method

.method static synthetic access$12400(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Z

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setVisibleToUser(Z)V

    return-void
.end method

.method static synthetic access$12500(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearVisibleToUser()V

    return-void
.end method

.method static synthetic access$12600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Z

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setClickable(Z)V

    return-void
.end method

.method static synthetic access$12700(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearClickable()V

    return-void
.end method

.method static synthetic access$12800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Z

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setLongClickable(Z)V

    return-void
.end method

.method static synthetic access$12900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearLongClickable()V

    return-void
.end method

.method static synthetic access$13000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Z

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$13100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearFocusable()V

    return-void
.end method

.method static synthetic access$13200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Z

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setEditable(Z)V

    return-void
.end method

.method static synthetic access$13300(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearEditable()V

    return-void
.end method

.method static synthetic access$13400(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Z

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setScrollable(Z)V

    return-void
.end method

.method static synthetic access$13500(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearScrollable()V

    return-void
.end method

.method static synthetic access$13600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Z

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setCanScrollForward(Z)V

    return-void
.end method

.method static synthetic access$13700(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearCanScrollForward()V

    return-void
.end method

.method static synthetic access$13800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Z

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setCanScrollBackward(Z)V

    return-void
.end method

.method static synthetic access$13900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearCanScrollBackward()V

    return-void
.end method

.method static synthetic access$14000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Z

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setCheckable(Z)V

    return-void
.end method

.method static synthetic access$14100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearCheckable()V

    return-void
.end method

.method static synthetic access$14200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Z

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setHasTouchDelegate(Z)V

    return-void
.end method

.method static synthetic access$14300(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearHasTouchDelegate()V

    return-void
.end method

.method static synthetic access$14400(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setBoundsInScreen(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    return-void
.end method

.method static synthetic access$14500(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setBoundsInScreen(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V

    return-void
.end method

.method static synthetic access$14600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->mergeBoundsInScreen(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    return-void
.end method

.method static synthetic access$14700(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearBoundsInScreen()V

    return-void
.end method

.method static synthetic access$14800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # F

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setTextSize(F)V

    return-void
.end method

.method static synthetic access$14900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearTextSize()V

    return-void
.end method

.method static synthetic access$15000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setTextColor(I)V

    return-void
.end method

.method static synthetic access$15100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearTextColor()V

    return-void
.end method

.method static synthetic access$15200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setBackgroundDrawableColor(I)V

    return-void
.end method

.method static synthetic access$15300(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearBackgroundDrawableColor()V

    return-void
.end method

.method static synthetic access$15400(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setTypefaceStyle(I)V

    return-void
.end method

.method static synthetic access$15500(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearTypefaceStyle()V

    return-void
.end method

.method static synthetic access$15600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Z

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$15700(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearEnabled()V

    return-void
.end method

.method static synthetic access$15800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # J

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setLabeledById(J)V

    return-void
.end method

.method static synthetic access$15900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearLabeledById()V

    return-void
.end method

.method static synthetic access$16000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setNonclippedHeight(I)V

    return-void
.end method

.method static synthetic access$16100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearNonclippedHeight()V

    return-void
.end method

.method static synthetic access$16200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setNonclippedWidth(I)V

    return-void
.end method

.method static synthetic access$16300(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearNonclippedWidth()V

    return-void
.end method

.method static synthetic access$16400(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Z

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setChecked(Z)V

    return-void
.end method

.method static synthetic access$16500(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearChecked()V

    return-void
.end method

.method static synthetic access$16600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Ljava/lang/String;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setAccessibilityClassName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16700(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearAccessibilityClassName()V

    return-void
.end method

.method static synthetic access$16800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setAccessibilityClassNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # J

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setAccessibilityTraversalBeforeId(J)V

    return-void
.end method

.method static synthetic access$17000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearAccessibilityTraversalBeforeId()V

    return-void
.end method

.method static synthetic access$17100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # J

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setAccessibilityTraversalAfterId(J)V

    return-void
.end method

.method static synthetic access$17200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearAccessibilityTraversalAfterId()V

    return-void
.end method

.method static synthetic access$17300(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;II)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setSuperclasses(II)V

    return-void
.end method

.method static synthetic access$17400(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addSuperclasses(I)V

    return-void
.end method

.method static synthetic access$17500(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addAllSuperclasses(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$17600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearSuperclasses()V

    return-void
.end method

.method static synthetic access$17700(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setDrawingOrder(I)V

    return-void
.end method

.method static synthetic access$17800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearDrawingOrder()V

    return-void
.end method

.method static synthetic access$17900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setTouchDelegateBounds(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    return-void
.end method

.method static synthetic access$18000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setTouchDelegateBounds(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V

    return-void
.end method

.method static synthetic access$18100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addTouchDelegateBounds(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    return-void
.end method

.method static synthetic access$18200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addTouchDelegateBounds(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    return-void
.end method

.method static synthetic access$18300(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addTouchDelegateBounds(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V

    return-void
.end method

.method static synthetic access$18400(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addTouchDelegateBounds(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V

    return-void
.end method

.method static synthetic access$18500(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addAllTouchDelegateBounds(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$18600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearTouchDelegateBounds()V

    return-void
.end method

.method static synthetic access$18700(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->removeTouchDelegateBounds(I)V

    return-void
.end method

.method static synthetic access$18800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setActions(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)V

    return-void
.end method

.method static synthetic access$18900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setActions(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;)V

    return-void
.end method

.method static synthetic access$19000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addActions(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)V

    return-void
.end method

.method static synthetic access$19100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addActions(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)V

    return-void
.end method

.method static synthetic access$19200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addActions(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;)V

    return-void
.end method

.method static synthetic access$19300(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addActions(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;)V

    return-void
.end method

.method static synthetic access$19400(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addAllActions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$19500(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearActions()V

    return-void
.end method

.method static synthetic access$19600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->removeActions(I)V

    return-void
.end method

.method static synthetic access$19700(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setLayoutParams(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;)V

    return-void
.end method

.method static synthetic access$19800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setLayoutParams(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;)V

    return-void
.end method

.method static synthetic access$19900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->mergeLayoutParams(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;)V

    return-void
.end method

.method static synthetic access$20000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearLayoutParams()V

    return-void
.end method

.method static synthetic access$20100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setHintText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V

    return-void
.end method

.method static synthetic access$20200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setHintText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;)V

    return-void
.end method

.method static synthetic access$20300(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->mergeHintText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V

    return-void
.end method

.method static synthetic access$20400(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearHintText()V

    return-void
.end method

.method static synthetic access$20500(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setHintTextColor(I)V

    return-void
.end method

.method static synthetic access$20600(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearHintTextColor()V

    return-void
.end method

.method static synthetic access$20700(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setTextCharacterLocations(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    return-void
.end method

.method static synthetic access$20800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setTextCharacterLocations(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V

    return-void
.end method

.method static synthetic access$20900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addTextCharacterLocations(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    return-void
.end method

.method static synthetic access$21000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addTextCharacterLocations(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V

    return-void
.end method

.method static synthetic access$21100(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addTextCharacterLocations(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V

    return-void
.end method

.method static synthetic access$21200(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    .line 5137
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addTextCharacterLocations(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V

    return-void
.end method

.method static synthetic access$21300(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->addAllTextCharacterLocations(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$21400(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearTextCharacterLocations()V

    return-void
.end method

.method static synthetic access$21500(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->removeTextCharacterLocations(I)V

    return-void
.end method

.method static synthetic access$9600()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .locals 1

    .line 5137
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setId(I)V

    return-void
.end method

.method static synthetic access$9800(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 5137
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clearId()V

    return-void
.end method

.method static synthetic access$9900(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .param p1, "x1"    # I

    .line 5137
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->setParentId(I)V

    return-void
.end method

.method private addActions(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;

    .line 6684
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureActionsIsMutable()V

    .line 6685
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 6686
    return-void
.end method

.method private addActions(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 6657
    if-eqz p2, :cond_0

    .line 6660
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureActionsIsMutable()V

    .line 6661
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 6662
    return-void

    .line 6658
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addActions(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;)V
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;

    .line 6672
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureActionsIsMutable()V

    .line 6673
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 6674
    return-void
.end method

.method private addActions(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)V
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 6642
    if-eqz p1, :cond_0

    .line 6645
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureActionsIsMutable()V

    .line 6646
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 6647
    return-void

    .line 6643
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addAllActions(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;",
            ">;)V"
        }
    .end annotation

    .line 6696
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;>;"
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureActionsIsMutable()V

    .line 6697
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6699
    return-void
.end method

.method private addAllChildIds(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5278
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureChildIdsIsMutable()V

    .line 5279
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5281
    return-void
.end method

.method private addAllSuperclasses(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6382
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureSuperclassesIsMutable()V

    .line 6383
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6385
    return-void
.end method

.method private addAllTextCharacterLocations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;",
            ">;)V"
        }
    .end annotation

    .line 6957
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;>;"
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTextCharacterLocationsIsMutable()V

    .line 6958
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6960
    return-void
.end method

.method private addAllTouchDelegateBounds(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;",
            ">;)V"
        }
    .end annotation

    .line 6528
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;>;"
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTouchDelegateBoundsIsMutable()V

    .line 6529
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6531
    return-void
.end method

.method private addChildIds(I)V
    .locals 1
    .param p1, "value"    # I

    .line 5270
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureChildIdsIsMutable()V

    .line 5271
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 5272
    return-void
.end method

.method private addSuperclasses(I)V
    .locals 1
    .param p1, "value"    # I

    .line 6370
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureSuperclassesIsMutable()V

    .line 6371
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 6372
    return-void
.end method

.method private addTextCharacterLocations(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    .line 6949
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTextCharacterLocationsIsMutable()V

    .line 6950
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 6951
    return-void
.end method

.method private addTextCharacterLocations(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 6930
    if-eqz p2, :cond_0

    .line 6933
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTextCharacterLocationsIsMutable()V

    .line 6934
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 6935
    return-void

    .line 6931
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addTextCharacterLocations(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    .line 6941
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTextCharacterLocationsIsMutable()V

    .line 6942
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 6943
    return-void
.end method

.method private addTextCharacterLocations(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 6919
    if-eqz p1, :cond_0

    .line 6922
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTextCharacterLocationsIsMutable()V

    .line 6923
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 6924
    return-void

    .line 6920
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addTouchDelegateBounds(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    .line 6520
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTouchDelegateBoundsIsMutable()V

    .line 6521
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 6522
    return-void
.end method

.method private addTouchDelegateBounds(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 6501
    if-eqz p2, :cond_0

    .line 6504
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTouchDelegateBoundsIsMutable()V

    .line 6505
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 6506
    return-void

    .line 6502
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addTouchDelegateBounds(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    .line 6512
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTouchDelegateBoundsIsMutable()V

    .line 6513
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 6514
    return-void
.end method

.method private addTouchDelegateBounds(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 6490
    if-eqz p1, :cond_0

    .line 6493
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTouchDelegateBoundsIsMutable()V

    .line 6494
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 6495
    return-void

    .line 6491
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearAccessibilityClassName()V
    .locals 2

    .line 6238
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6239
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getAccessibilityClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityClassName_:Ljava/lang/String;

    .line 6240
    return-void
.end method

.method private clearAccessibilityTraversalAfterId()V
    .locals 2

    .line 6307
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6308
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalAfterId_:J

    .line 6309
    return-void
.end method

.method private clearAccessibilityTraversalBeforeId()V
    .locals 2

    .line 6278
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6279
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalBeforeId_:J

    .line 6280
    return-void
.end method

.method private clearActions()V
    .locals 1

    .line 6708
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6709
    return-void
.end method

.method private clearBackgroundDrawableColor()V
    .locals 2

    .line 6024
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6025
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->backgroundDrawableColor_:I

    .line 6026
    return-void
.end method

.method private clearBoundsInScreen()V
    .locals 2

    .line 5937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->boundsInScreen_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 5938
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5939
    return-void
.end method

.method private clearCanScrollBackward()V
    .locals 2

    .line 5827
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollBackward_:Z

    .line 5829
    return-void
.end method

.method private clearCanScrollForward()V
    .locals 1

    .line 5798
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollForward_:Z

    .line 5800
    return-void
.end method

.method private clearCheckable()V
    .locals 2

    .line 5856
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5857
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checkable_:Z

    .line 5858
    return-void
.end method

.method private clearChecked()V
    .locals 2

    .line 6198
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checked_:Z

    .line 6200
    return-void
.end method

.method private clearChildIds()V
    .locals 1

    .line 5286
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    .line 5287
    return-void
.end method

.method private clearClassName()V
    .locals 1

    .line 5400
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5401
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->className_:Ljava/lang/String;

    .line 5402
    return-void
.end method

.method private clearClickable()V
    .locals 1

    .line 5653
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clickable_:Z

    .line 5655
    return-void
.end method

.method private clearContentDescription()V
    .locals 1

    .line 5514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->contentDescription_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5515
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5516
    return-void
.end method

.method private clearDrawingOrder()V
    .locals 2

    .line 6422
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6423
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->drawingOrder_:I

    .line 6424
    return-void
.end method

.method private clearEditable()V
    .locals 1

    .line 5740
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->editable_:Z

    .line 5742
    return-void
.end method

.method private clearEnabled()V
    .locals 2

    .line 6082
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6083
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->enabled_:Z

    .line 6084
    return-void
.end method

.method private clearFocusable()V
    .locals 1

    .line 5711
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5712
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->focusable_:Z

    .line 5713
    return-void
.end method

.method private clearHasTouchDelegate()V
    .locals 2

    .line 5885
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTouchDelegate_:Z

    .line 5887
    return-void
.end method

.method private clearHintText()V
    .locals 1

    .line 6822
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintText_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 6823
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    .line 6824
    return-void
.end method

.method private clearHintTextColor()V
    .locals 1

    .line 6851
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    .line 6852
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintTextColor_:I

    .line 6853
    return-void
.end method

.method private clearId()V
    .locals 1

    .line 5198
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5199
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->id_:I

    .line 5200
    return-void
.end method

.method private clearImportantForAccessibility()V
    .locals 1

    .line 5595
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->importantForAccessibility_:Z

    .line 5597
    return-void
.end method

.method private clearLabeledById()V
    .locals 2

    .line 6111
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->labeledById_:J

    .line 6113
    return-void
.end method

.method private clearLayoutParams()V
    .locals 1

    .line 6770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->layoutParams_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    .line 6771
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    .line 6772
    return-void
.end method

.method private clearLongClickable()V
    .locals 1

    .line 5682
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->longClickable_:Z

    .line 5684
    return-void
.end method

.method private clearNonclippedHeight()V
    .locals 2

    .line 6140
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6141
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedHeight_:I

    .line 6142
    return-void
.end method

.method private clearNonclippedWidth()V
    .locals 2

    .line 6169
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6170
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedWidth_:I

    .line 6171
    return-void
.end method

.method private clearPackageName()V
    .locals 1

    .line 5345
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5346
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->packageName_:Ljava/lang/String;

    .line 5347
    return-void
.end method

.method private clearParentId()V
    .locals 1

    .line 5227
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5228
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->parentId_:I

    .line 5229
    return-void
.end method

.method private clearResourceName()V
    .locals 1

    .line 5451
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5452
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getResourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->resourceName_:Ljava/lang/String;

    .line 5453
    return-void
.end method

.method private clearScrollable()V
    .locals 1

    .line 5769
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->scrollable_:Z

    .line 5771
    return-void
.end method

.method private clearSuperclasses()V
    .locals 1

    .line 6394
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    .line 6395
    return-void
.end method

.method private clearText()V
    .locals 1

    .line 5566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->text_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5567
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5568
    return-void
.end method

.method private clearTextCharacterLocations()V
    .locals 1

    .line 6965
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6966
    return-void
.end method

.method private clearTextColor()V
    .locals 2

    .line 5995
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5996
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textColor_:I

    .line 5997
    return-void
.end method

.method private clearTextSize()V
    .locals 2

    .line 5966
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5967
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textSize_:F

    .line 5968
    return-void
.end method

.method private clearTouchDelegateBounds()V
    .locals 1

    .line 6536
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6537
    return-void
.end method

.method private clearTypefaceStyle()V
    .locals 2

    .line 6053
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6054
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->typefaceStyle_:I

    .line 6055
    return-void
.end method

.method private clearVisibleToUser()V
    .locals 1

    .line 5624
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->visibleToUser_:Z

    .line 5626
    return-void
.end method

.method private ensureActionsIsMutable()V
    .locals 1

    .line 6601
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6602
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6603
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6605
    :cond_0
    return-void
.end method

.method private ensureChildIdsIsMutable()V
    .locals 1

    .line 5253
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5254
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    .line 5255
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    .line 5257
    :cond_0
    return-void
.end method

.method private ensureSuperclassesIsMutable()V
    .locals 1

    .line 6345
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6346
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    .line 6347
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    .line 6349
    :cond_0
    return-void
.end method

.method private ensureTextCharacterLocationsIsMutable()V
    .locals 1

    .line 6890
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6891
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6892
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6894
    :cond_0
    return-void
.end method

.method private ensureTouchDelegateBoundsIsMutable()V
    .locals 1

    .line 6461
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6462
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6463
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6465
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .locals 1

    .line 9544
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v0
.end method

.method private mergeBoundsInScreen(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 5925
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->boundsInScreen_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    if-eqz v0, :cond_0

    .line 5926
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5927
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->boundsInScreen_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 5928
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;->newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->boundsInScreen_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    goto :goto_0

    .line 5930
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->boundsInScreen_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 5932
    :goto_0
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5933
    return-void
.end method

.method private mergeContentDescription(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5502
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->contentDescription_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    if-eqz v0, :cond_0

    .line 5503
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5504
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->contentDescription_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5505
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->contentDescription_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    goto :goto_0

    .line 5507
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->contentDescription_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5509
    :goto_0
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5510
    return-void
.end method

.method private mergeHintText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 6810
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintText_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    if-eqz v0, :cond_0

    .line 6811
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6812
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintText_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 6813
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintText_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    goto :goto_0

    .line 6815
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintText_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 6817
    :goto_0
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    .line 6818
    return-void
.end method

.method private mergeLayoutParams(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    .line 6758
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->layoutParams_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    if-eqz v0, :cond_0

    .line 6759
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6760
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->layoutParams_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    .line 6761
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;->newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->layoutParams_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    goto :goto_0

    .line 6763
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->layoutParams_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    .line 6765
    :goto_0
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    .line 6766
    return-void
.end method

.method private mergeText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5554
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->text_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    if-eqz v0, :cond_0

    .line 5555
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5556
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->text_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5557
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->text_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    goto :goto_0

    .line 5559
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->text_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5561
    :goto_0
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5562
    return-void
.end method

.method public static newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;
    .locals 1

    .line 7348
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 7351
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7325
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-static {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7331
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7289
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7296
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7336
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7343
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7313
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7320
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7301
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7308
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;",
            ">;"
        }
    .end annotation

    .line 9550
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeActions(I)V
    .locals 1
    .param p1, "index"    # I

    .line 6718
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureActionsIsMutable()V

    .line 6719
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 6720
    return-void
.end method

.method private removeTextCharacterLocations(I)V
    .locals 1
    .param p1, "index"    # I

    .line 6971
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTextCharacterLocationsIsMutable()V

    .line 6972
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 6973
    return-void
.end method

.method private removeTouchDelegateBounds(I)V
    .locals 1
    .param p1, "index"    # I

    .line 6542
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTouchDelegateBoundsIsMutable()V

    .line 6543
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 6544
    return-void
.end method

.method private setAccessibilityClassName(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 6228
    if-eqz p1, :cond_0

    .line 6231
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6232
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityClassName_:Ljava/lang/String;

    .line 6233
    return-void

    .line 6229
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setAccessibilityClassNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 6246
    if-eqz p1, :cond_0

    .line 6249
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6250
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityClassName_:Ljava/lang/String;

    .line 6251
    return-void

    .line 6247
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setAccessibilityTraversalAfterId(J)V
    .locals 2
    .param p1, "value"    # J

    .line 6300
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6301
    iput-wide p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalAfterId_:J

    .line 6302
    return-void
.end method

.method private setAccessibilityTraversalBeforeId(J)V
    .locals 2
    .param p1, "value"    # J

    .line 6271
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6272
    iput-wide p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalBeforeId_:J

    .line 6273
    return-void
.end method

.method private setActions(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;

    .line 6631
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureActionsIsMutable()V

    .line 6632
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6633
    return-void
.end method

.method private setActions(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 6616
    if-eqz p2, :cond_0

    .line 6619
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureActionsIsMutable()V

    .line 6620
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6621
    return-void

    .line 6617
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setBackgroundDrawableColor(I)V
    .locals 2
    .param p1, "value"    # I

    .line 6017
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6018
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->backgroundDrawableColor_:I

    .line 6019
    return-void
.end method

.method private setBoundsInScreen(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    .line 5918
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->boundsInScreen_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 5919
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5920
    return-void
.end method

.method private setBoundsInScreen(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 5907
    if-eqz p1, :cond_0

    .line 5910
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->boundsInScreen_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 5911
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5912
    return-void

    .line 5908
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setCanScrollBackward(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 5820
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5821
    iput-boolean p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollBackward_:Z

    .line 5822
    return-void
.end method

.method private setCanScrollForward(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 5791
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5792
    iput-boolean p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollForward_:Z

    .line 5793
    return-void
.end method

.method private setCheckable(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 5849
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5850
    iput-boolean p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checkable_:Z

    .line 5851
    return-void
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 6191
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6192
    iput-boolean p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checked_:Z

    .line 6193
    return-void
.end method

.method private setChildIds(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 5263
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureChildIdsIsMutable()V

    .line 5264
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 5265
    return-void
.end method

.method private setClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5390
    if-eqz p1, :cond_0

    .line 5393
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5394
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->className_:Ljava/lang/String;

    .line 5395
    return-void

    .line 5391
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setClassNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5408
    if-eqz p1, :cond_0

    .line 5411
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5412
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->className_:Ljava/lang/String;

    .line 5413
    return-void

    .line 5409
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setClickable(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 5646
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5647
    iput-boolean p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clickable_:Z

    .line 5648
    return-void
.end method

.method private setContentDescription(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    .line 5495
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->contentDescription_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5496
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5497
    return-void
.end method

.method private setContentDescription(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5484
    if-eqz p1, :cond_0

    .line 5487
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->contentDescription_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5488
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5489
    return-void

    .line 5485
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setDrawingOrder(I)V
    .locals 2
    .param p1, "value"    # I

    .line 6415
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6416
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->drawingOrder_:I

    .line 6417
    return-void
.end method

.method private setEditable(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 5733
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5734
    iput-boolean p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->editable_:Z

    .line 5735
    return-void
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 6075
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6076
    iput-boolean p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->enabled_:Z

    .line 6077
    return-void
.end method

.method private setFocusable(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 5704
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5705
    iput-boolean p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->focusable_:Z

    .line 5706
    return-void
.end method

.method private setHasTouchDelegate(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 5878
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5879
    iput-boolean p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTouchDelegate_:Z

    .line 5880
    return-void
.end method

.method private setHintText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    .line 6803
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintText_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 6804
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    .line 6805
    return-void
.end method

.method private setHintText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 6792
    if-eqz p1, :cond_0

    .line 6795
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintText_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 6796
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    .line 6797
    return-void

    .line 6793
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setHintTextColor(I)V
    .locals 1
    .param p1, "value"    # I

    .line 6844
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    .line 6845
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintTextColor_:I

    .line 6846
    return-void
.end method

.method private setId(I)V
    .locals 1
    .param p1, "value"    # I

    .line 5187
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5188
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->id_:I

    .line 5189
    return-void
.end method

.method private setImportantForAccessibility(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 5588
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5589
    iput-boolean p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->importantForAccessibility_:Z

    .line 5590
    return-void
.end method

.method private setLabeledById(J)V
    .locals 2
    .param p1, "value"    # J

    .line 6104
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6105
    iput-wide p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->labeledById_:J

    .line 6106
    return-void
.end method

.method private setLayoutParams(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;

    .line 6751
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->layoutParams_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    .line 6752
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    .line 6753
    return-void
.end method

.method private setLayoutParams(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;)V
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    .line 6740
    if-eqz p1, :cond_0

    .line 6743
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->layoutParams_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    .line 6744
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    .line 6745
    return-void

    .line 6741
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setLongClickable(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 5675
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5676
    iput-boolean p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->longClickable_:Z

    .line 5677
    return-void
.end method

.method private setNonclippedHeight(I)V
    .locals 2
    .param p1, "value"    # I

    .line 6133
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6134
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedHeight_:I

    .line 6135
    return-void
.end method

.method private setNonclippedWidth(I)V
    .locals 2
    .param p1, "value"    # I

    .line 6162
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6163
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedWidth_:I

    .line 6164
    return-void
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5331
    if-eqz p1, :cond_0

    .line 5334
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5335
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->packageName_:Ljava/lang/String;

    .line 5336
    return-void

    .line 5332
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setPackageNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5357
    if-eqz p1, :cond_0

    .line 5360
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5361
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->packageName_:Ljava/lang/String;

    .line 5362
    return-void

    .line 5358
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setParentId(I)V
    .locals 1
    .param p1, "value"    # I

    .line 5220
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5221
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->parentId_:I

    .line 5222
    return-void
.end method

.method private setResourceName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5441
    if-eqz p1, :cond_0

    .line 5444
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5445
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->resourceName_:Ljava/lang/String;

    .line 5446
    return-void

    .line 5442
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setResourceNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5459
    if-eqz p1, :cond_0

    .line 5462
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5463
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->resourceName_:Ljava/lang/String;

    .line 5464
    return-void

    .line 5460
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setScrollable(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 5762
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5763
    iput-boolean p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->scrollable_:Z

    .line 5764
    return-void
.end method

.method private setSuperclasses(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 6359
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureSuperclassesIsMutable()V

    .line 6360
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 6361
    return-void
.end method

.method private setText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    .line 5547
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->text_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5548
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5549
    return-void
.end method

.method private setText(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;)V
    .locals 1
    .param p1, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5536
    if-eqz p1, :cond_0

    .line 5539
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->text_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 5540
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5541
    return-void

    .line 5537
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setTextCharacterLocations(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    .line 6912
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTextCharacterLocationsIsMutable()V

    .line 6913
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6914
    return-void
.end method

.method private setTextCharacterLocations(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 6901
    if-eqz p2, :cond_0

    .line 6904
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTextCharacterLocationsIsMutable()V

    .line 6905
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6906
    return-void

    .line 6902
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setTextColor(I)V
    .locals 2
    .param p1, "value"    # I

    .line 5988
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5989
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textColor_:I

    .line 5990
    return-void
.end method

.method private setTextSize(F)V
    .locals 2
    .param p1, "value"    # F

    .line 5959
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5960
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textSize_:F

    .line 5961
    return-void
.end method

.method private setTouchDelegateBounds(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    .line 6483
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTouchDelegateBoundsIsMutable()V

    .line 6484
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6485
    return-void
.end method

.method private setTouchDelegateBounds(ILcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 6472
    if-eqz p2, :cond_0

    .line 6475
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->ensureTouchDelegateBoundsIsMutable()V

    .line 6476
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6477
    return-void

    .line 6473
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setTypefaceStyle(I)V
    .locals 2
    .param p1, "value"    # I

    .line 6046
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 6047
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->typefaceStyle_:I

    .line 6048
    return-void
.end method

.method private setVisibleToUser(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 5617
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 5618
    iput-boolean p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->visibleToUser_:Z

    .line 5619
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 9059
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 9532
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 9523
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    monitor-enter v0

    .line 9524
    :try_start_0
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    .line 9525
    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 9527
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9529
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    .line 9201
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    .line 9203
    .local v0, "input":Lcom/google/protobuf/CodedInputStream;
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 9206
    .local v1, "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    const/4 v3, 0x0

    .line 9207
    .local v3, "done":Z
    :goto_1
    if-nez v3, :cond_16

    .line 9208
    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 9209
    .local v4, "tag":I
    const/4 v5, 0x2

    sparse-switch v4, :sswitch_data_0

    .line 9214
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    goto/16 :goto_4

    .line 9500
    :sswitch_0
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v5}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 9501
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9502
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9504
    :cond_2
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9505
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 9504
    invoke-interface {v5, v6}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 9495
    :sswitch_1
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    .line 9496
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintTextColor_:I

    .line 9497
    goto/16 :goto_5

    .line 9482
    :sswitch_2
    const/4 v6, 0x0

    .line 9483
    .local v6, "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;
    iget v7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_3

    .line 9484
    iget-object v7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintText_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    invoke-virtual {v7}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    move-object v6, v7

    .line 9486
    :cond_3
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iput-object v7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintText_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 9487
    if-eqz v6, :cond_4

    .line 9488
    invoke-virtual {v6, v7}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9489
    invoke-virtual {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iput-object v7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintText_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 9491
    :cond_4
    iget v7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    or-int/2addr v5, v7

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    .line 9492
    goto/16 :goto_5

    .line 9469
    .end local v6    # "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;
    :sswitch_3
    const/4 v5, 0x0

    .line 9470
    .local v5, "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;
    iget v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_5

    .line 9471
    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->layoutParams_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    invoke-virtual {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;

    move-object v5, v6

    .line 9473
    :cond_5
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    iput-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->layoutParams_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    .line 9474
    if-eqz v5, :cond_6

    .line 9475
    invoke-virtual {v5, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9476
    invoke-virtual {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    iput-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->layoutParams_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    .line 9478
    :cond_6
    iget v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    or-int/2addr v6, v2

    iput v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    .line 9479
    goto/16 :goto_5

    .line 9460
    .end local v5    # "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto$Builder;
    :sswitch_4
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v5}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v5

    if-nez v5, :cond_7

    .line 9461
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9462
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9464
    :cond_7
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9465
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 9464
    invoke-interface {v5, v6}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 9466
    goto/16 :goto_5

    .line 9451
    :sswitch_5
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v5}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v5

    if-nez v5, :cond_8

    .line 9452
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9453
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9455
    :cond_8
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9456
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 9455
    invoke-interface {v5, v6}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 9457
    goto/16 :goto_5

    .line 9446
    :sswitch_6
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, -0x80000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9447
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->drawingOrder_:I

    .line 9448
    goto/16 :goto_5

    .line 9433
    :sswitch_7
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v5

    .line 9434
    .local v5, "length":I
    invoke-virtual {v0, v5}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v6

    .line 9435
    .local v6, "limit":I
    iget-object v7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v7}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_9

    .line 9436
    iget-object v7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    .line 9437
    invoke-static {v7}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    .line 9439
    :cond_9
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_a

    .line 9440
    iget-object v7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_2

    .line 9442
    :cond_a
    invoke-virtual {v0, v6}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 9443
    goto/16 :goto_5

    .line 9425
    .end local v5    # "length":I
    .end local v6    # "limit":I
    :sswitch_8
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v5

    if-nez v5, :cond_b

    .line 9426
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    .line 9427
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    .line 9429
    :cond_b
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 9430
    goto/16 :goto_5

    .line 9420
    :sswitch_9
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9421
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalAfterId_:J

    .line 9422
    goto/16 :goto_5

    .line 9415
    :sswitch_a
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9416
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalBeforeId_:J

    .line 9417
    goto/16 :goto_5

    .line 9409
    :sswitch_b
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    .line 9410
    .local v5, "s":Ljava/lang/String;
    iget v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v7, 0x10000000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9411
    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityClassName_:Ljava/lang/String;

    .line 9412
    goto/16 :goto_5

    .line 9404
    .end local v5    # "s":Ljava/lang/String;
    :sswitch_c
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9405
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checked_:Z

    .line 9406
    goto/16 :goto_5

    .line 9399
    :sswitch_d
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, 0x4000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9400
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedWidth_:I

    .line 9401
    goto/16 :goto_5

    .line 9394
    :sswitch_e
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, 0x2000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9395
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedHeight_:I

    .line 9396
    goto/16 :goto_5

    .line 9389
    :sswitch_f
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, 0x1000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9390
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->labeledById_:J

    .line 9391
    goto/16 :goto_5

    .line 9384
    :sswitch_10
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, 0x800000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9385
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->enabled_:Z

    .line 9386
    goto/16 :goto_5

    .line 9379
    :sswitch_11
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9380
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->typefaceStyle_:I

    .line 9381
    goto/16 :goto_5

    .line 9374
    :sswitch_12
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9375
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->backgroundDrawableColor_:I

    .line 9376
    goto/16 :goto_5

    .line 9369
    :sswitch_13
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9370
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textColor_:I

    .line 9371
    goto/16 :goto_5

    .line 9364
    :sswitch_14
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9365
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textSize_:F

    .line 9366
    goto/16 :goto_5

    .line 9351
    :sswitch_15
    const/4 v5, 0x0

    .line 9352
    .local v5, "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;
    iget v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v7, 0x40000

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_c

    .line 9353
    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->boundsInScreen_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    invoke-virtual {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;

    move-object v5, v6

    .line 9355
    :cond_c
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    iput-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->boundsInScreen_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 9356
    if-eqz v5, :cond_d

    .line 9357
    invoke-virtual {v5, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9358
    invoke-virtual {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    iput-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->boundsInScreen_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 9360
    :cond_d
    iget v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9361
    goto/16 :goto_5

    .line 9346
    .end local v5    # "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto$Builder;
    :sswitch_16
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9347
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTouchDelegate_:Z

    .line 9348
    goto/16 :goto_5

    .line 9341
    :sswitch_17
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9342
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checkable_:Z

    .line 9343
    goto/16 :goto_5

    .line 9336
    :sswitch_18
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9337
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollBackward_:Z

    .line 9338
    goto/16 :goto_5

    .line 9331
    :sswitch_19
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9332
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollForward_:Z

    .line 9333
    goto/16 :goto_5

    .line 9326
    :sswitch_1a
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9327
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->scrollable_:Z

    .line 9328
    goto/16 :goto_5

    .line 9321
    :sswitch_1b
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9322
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->editable_:Z

    .line 9323
    goto/16 :goto_5

    .line 9316
    :sswitch_1c
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9317
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->focusable_:Z

    .line 9318
    goto/16 :goto_5

    .line 9311
    :sswitch_1d
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9312
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->longClickable_:Z

    .line 9313
    goto/16 :goto_5

    .line 9306
    :sswitch_1e
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9307
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clickable_:Z

    .line 9308
    goto/16 :goto_5

    .line 9301
    :sswitch_1f
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9302
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->visibleToUser_:Z

    .line 9303
    goto/16 :goto_5

    .line 9296
    :sswitch_20
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9297
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->importantForAccessibility_:Z

    .line 9298
    goto/16 :goto_5

    .line 9283
    :sswitch_21
    const/4 v5, 0x0

    .line 9284
    .local v5, "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;
    iget v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v7, 0x40

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_e

    .line 9285
    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->text_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    invoke-virtual {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    move-object v5, v6

    .line 9287
    :cond_e
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iput-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->text_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 9288
    if-eqz v5, :cond_f

    .line 9289
    invoke-virtual {v5, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9290
    invoke-virtual {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iput-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->text_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 9292
    :cond_f
    iget v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9293
    goto/16 :goto_5

    .line 9270
    .end local v5    # "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;
    :sswitch_22
    const/4 v5, 0x0

    .line 9271
    .restart local v5    # "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;
    iget v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v7, 0x20

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_10

    .line 9272
    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->contentDescription_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    invoke-virtual {v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;

    move-object v5, v6

    .line 9274
    :cond_10
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iput-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->contentDescription_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 9275
    if-eqz v5, :cond_11

    .line 9276
    invoke-virtual {v5, v6}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9277
    invoke-virtual {v5}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iput-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->contentDescription_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 9279
    :cond_11
    iget v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9280
    goto/16 :goto_5

    .line 9264
    .end local v5    # "subBuilder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto$Builder;
    :sswitch_23
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    .line 9265
    .local v5, "s":Ljava/lang/String;
    iget v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9266
    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->resourceName_:Ljava/lang/String;

    .line 9267
    goto/16 :goto_5

    .line 9258
    .end local v5    # "s":Ljava/lang/String;
    :sswitch_24
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    .line 9259
    .restart local v5    # "s":Ljava/lang/String;
    iget v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9260
    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->className_:Ljava/lang/String;

    .line 9261
    goto/16 :goto_5

    .line 9252
    .end local v5    # "s":Ljava/lang/String;
    :sswitch_25
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    .line 9253
    .restart local v5    # "s":Ljava/lang/String;
    iget v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9254
    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->packageName_:Ljava/lang/String;

    .line 9255
    goto/16 :goto_5

    .line 9239
    .end local v5    # "s":Ljava/lang/String;
    :sswitch_26
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v5

    .line 9240
    .local v5, "length":I
    invoke-virtual {v0, v5}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v6

    .line 9241
    .restart local v6    # "limit":I
    iget-object v7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v7}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_12

    .line 9242
    iget-object v7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    .line 9243
    invoke-static {v7}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    .line 9245
    :cond_12
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_13

    .line 9246
    iget-object v7, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_3

    .line 9248
    :cond_13
    invoke-virtual {v0, v6}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 9249
    goto :goto_5

    .line 9231
    .end local v5    # "length":I
    .end local v6    # "limit":I
    :sswitch_27
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v5

    if-nez v5, :cond_14

    .line 9232
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    .line 9233
    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    .line 9235
    :cond_14
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 9236
    goto :goto_5

    .line 9226
    :sswitch_28
    iget v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9227
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->parentId_:I

    .line 9228
    goto :goto_5

    .line 9221
    :sswitch_29
    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9222
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->id_:I

    .line 9223
    goto :goto_5

    .line 9211
    :sswitch_2a
    const/4 v3, 0x1

    .line 9212
    goto :goto_5

    .line 9214
    :goto_4
    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-virtual {p0, v5, v0, v1, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->parseUnknownField(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_15

    .line 9216
    const/4 v3, 0x1

    .line 9509
    .end local v4    # "tag":I
    :cond_15
    :goto_5
    goto/16 :goto_1

    .line 9516
    .end local v3    # "done":Z
    :catchall_1
    move-exception v2

    goto :goto_6

    .line 9512
    :catch_0
    move-exception v2

    .line 9513
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 9515
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3

    .line 9510
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 9511
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .end local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .end local p2    # "arg0":Ljava/lang/Object;
    .end local p3    # "arg1":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9517
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local p1    # "method":Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .restart local p2    # "arg0":Ljava/lang/Object;
    .restart local p3    # "arg1":Ljava/lang/Object;
    :goto_6
    throw v2

    :cond_16
    nop

    .line 9520
    .end local v0    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v0

    .line 9091
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 9092
    .local v0, "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    move-object v8, p3

    check-cast v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    .line 9093
    .local v8, "other":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    nop

    .line 9094
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasId()Z

    move-result v1

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->id_:I

    .line 9095
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasId()Z

    move-result v3

    iget v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->id_:I

    .line 9093
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->id_:I

    .line 9096
    nop

    .line 9097
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasParentId()Z

    move-result v1

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->parentId_:I

    .line 9098
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasParentId()Z

    move-result v3

    iget v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->parentId_:I

    .line 9096
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->parentId_:I

    .line 9099
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    iget-object v2, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/google/protobuf/Internal$IntList;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    .line 9100
    nop

    .line 9101
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasPackageName()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->packageName_:Ljava/lang/String;

    .line 9102
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasPackageName()Z

    move-result v3

    iget-object v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->packageName_:Ljava/lang/String;

    .line 9100
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->packageName_:Ljava/lang/String;

    .line 9103
    nop

    .line 9104
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasClassName()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->className_:Ljava/lang/String;

    .line 9105
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasClassName()Z

    move-result v3

    iget-object v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->className_:Ljava/lang/String;

    .line 9103
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->className_:Ljava/lang/String;

    .line 9106
    nop

    .line 9107
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasResourceName()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->resourceName_:Ljava/lang/String;

    .line 9108
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasResourceName()Z

    move-result v3

    iget-object v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->resourceName_:Ljava/lang/String;

    .line 9106
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->resourceName_:Ljava/lang/String;

    .line 9109
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->contentDescription_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iget-object v2, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->contentDescription_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->contentDescription_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 9110
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->text_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iget-object v2, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->text_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->text_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 9111
    nop

    .line 9112
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasImportantForAccessibility()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->importantForAccessibility_:Z

    .line 9113
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasImportantForAccessibility()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->importantForAccessibility_:Z

    .line 9111
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->importantForAccessibility_:Z

    .line 9114
    nop

    .line 9115
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasVisibleToUser()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->visibleToUser_:Z

    .line 9116
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasVisibleToUser()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->visibleToUser_:Z

    .line 9114
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->visibleToUser_:Z

    .line 9117
    nop

    .line 9118
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasClickable()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clickable_:Z

    .line 9119
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasClickable()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clickable_:Z

    .line 9117
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clickable_:Z

    .line 9120
    nop

    .line 9121
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasLongClickable()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->longClickable_:Z

    .line 9122
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasLongClickable()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->longClickable_:Z

    .line 9120
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->longClickable_:Z

    .line 9123
    nop

    .line 9124
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasFocusable()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->focusable_:Z

    .line 9125
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasFocusable()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->focusable_:Z

    .line 9123
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->focusable_:Z

    .line 9126
    nop

    .line 9127
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasEditable()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->editable_:Z

    .line 9128
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasEditable()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->editable_:Z

    .line 9126
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->editable_:Z

    .line 9129
    nop

    .line 9130
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasScrollable()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->scrollable_:Z

    .line 9131
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasScrollable()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->scrollable_:Z

    .line 9129
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->scrollable_:Z

    .line 9132
    nop

    .line 9133
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasCanScrollForward()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollForward_:Z

    .line 9134
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasCanScrollForward()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollForward_:Z

    .line 9132
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollForward_:Z

    .line 9135
    nop

    .line 9136
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasCanScrollBackward()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollBackward_:Z

    .line 9137
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasCanScrollBackward()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollBackward_:Z

    .line 9135
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollBackward_:Z

    .line 9138
    nop

    .line 9139
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasCheckable()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checkable_:Z

    .line 9140
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasCheckable()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checkable_:Z

    .line 9138
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checkable_:Z

    .line 9141
    nop

    .line 9142
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasHasTouchDelegate()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTouchDelegate_:Z

    .line 9143
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasHasTouchDelegate()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTouchDelegate_:Z

    .line 9141
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTouchDelegate_:Z

    .line 9144
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->boundsInScreen_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    iget-object v2, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->boundsInScreen_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->boundsInScreen_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    .line 9145
    nop

    .line 9146
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTextSize()Z

    move-result v1

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textSize_:F

    .line 9147
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTextSize()Z

    move-result v3

    iget v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textSize_:F

    .line 9145
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textSize_:F

    .line 9148
    nop

    .line 9149
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTextColor()Z

    move-result v1

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textColor_:I

    .line 9150
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTextColor()Z

    move-result v3

    iget v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textColor_:I

    .line 9148
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textColor_:I

    .line 9151
    nop

    .line 9152
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasBackgroundDrawableColor()Z

    move-result v1

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->backgroundDrawableColor_:I

    .line 9153
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasBackgroundDrawableColor()Z

    move-result v3

    iget v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->backgroundDrawableColor_:I

    .line 9151
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->backgroundDrawableColor_:I

    .line 9154
    nop

    .line 9155
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTypefaceStyle()Z

    move-result v1

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->typefaceStyle_:I

    .line 9156
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTypefaceStyle()Z

    move-result v3

    iget v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->typefaceStyle_:I

    .line 9154
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->typefaceStyle_:I

    .line 9157
    nop

    .line 9158
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasEnabled()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->enabled_:Z

    .line 9159
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasEnabled()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->enabled_:Z

    .line 9157
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->enabled_:Z

    .line 9160
    nop

    .line 9161
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasLabeledById()Z

    move-result v2

    iget-wide v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->labeledById_:J

    .line 9162
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasLabeledById()Z

    move-result v5

    iget-wide v6, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->labeledById_:J

    .line 9160
    move-object v1, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->labeledById_:J

    .line 9163
    nop

    .line 9164
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasNonclippedHeight()Z

    move-result v1

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedHeight_:I

    .line 9165
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasNonclippedHeight()Z

    move-result v3

    iget v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedHeight_:I

    .line 9163
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedHeight_:I

    .line 9166
    nop

    .line 9167
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasNonclippedWidth()Z

    move-result v1

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedWidth_:I

    .line 9168
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasNonclippedWidth()Z

    move-result v3

    iget v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedWidth_:I

    .line 9166
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedWidth_:I

    .line 9169
    nop

    .line 9170
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasChecked()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checked_:Z

    .line 9171
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasChecked()Z

    move-result v3

    iget-boolean v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checked_:Z

    .line 9169
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checked_:Z

    .line 9172
    nop

    .line 9173
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasAccessibilityClassName()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityClassName_:Ljava/lang/String;

    .line 9174
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasAccessibilityClassName()Z

    move-result v3

    iget-object v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityClassName_:Ljava/lang/String;

    .line 9172
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityClassName_:Ljava/lang/String;

    .line 9175
    nop

    .line 9176
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasAccessibilityTraversalBeforeId()Z

    move-result v2

    iget-wide v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalBeforeId_:J

    .line 9177
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasAccessibilityTraversalBeforeId()Z

    move-result v5

    iget-wide v6, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalBeforeId_:J

    .line 9175
    move-object v1, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalBeforeId_:J

    .line 9178
    nop

    .line 9179
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasAccessibilityTraversalAfterId()Z

    move-result v2

    iget-wide v3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalAfterId_:J

    .line 9180
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasAccessibilityTraversalAfterId()Z

    move-result v5

    iget-wide v6, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalAfterId_:J

    .line 9178
    move-object v1, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalAfterId_:J

    .line 9181
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    iget-object v2, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/google/protobuf/Internal$IntList;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    .line 9182
    nop

    .line 9183
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasDrawingOrder()Z

    move-result v1

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->drawingOrder_:I

    .line 9184
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasDrawingOrder()Z

    move-result v3

    iget v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->drawingOrder_:I

    .line 9182
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->drawingOrder_:I

    .line 9185
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v2, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9186
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v2, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9187
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->layoutParams_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    iget-object v2, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->layoutParams_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->layoutParams_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    .line 9188
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintText_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iget-object v2, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintText_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintText_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    .line 9189
    nop

    .line 9190
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasHintTextColor()Z

    move-result v1

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintTextColor_:I

    .line 9191
    invoke-virtual {v8}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasHintTextColor()Z

    move-result v3

    iget v4, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintTextColor_:I

    .line 9189
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintTextColor_:I

    .line 9192
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v2, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9193
    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v1, :cond_17

    .line 9195
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    iget v2, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    .line 9196
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    iget v2, v8, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    .line 9198
    :cond_17
    return-object p0

    .line 9088
    .end local v0    # "visitor":Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .end local v8    # "other":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
    :pswitch_4
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$1;)V

    return-object v0

    .line 9080
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->makeImmutable()V

    .line 9081
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->makeImmutable()V

    .line 9082
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 9083
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 9084
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 9085
    return-object v1

    .line 9064
    :pswitch_6
    iget-byte v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->memoizedIsInitialized:B

    .line 9065
    .local v0, "isInitialized":B
    if-ne v0, v2, :cond_18

    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v1

    .line 9066
    :cond_18
    if-nez v0, :cond_19

    return-object v1

    .line 9068
    :cond_19
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 9069
    .local v3, "shouldMemoize":Z
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->extensionsAreInitialized()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 9070
    if-eqz v3, :cond_1a

    .line 9071
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->memoizedIsInitialized:B

    .line 9073
    :cond_1a
    return-object v1

    .line 9075
    :cond_1b
    if-eqz v3, :cond_1c

    iput-byte v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->memoizedIsInitialized:B

    .line 9076
    :cond_1c
    sget-object v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->DEFAULT_INSTANCE:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    return-object v1

    .line 9061
    .end local v0    # "isInitialized":B
    .end local v3    # "shouldMemoize":Z
    :pswitch_7
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2a
        0x8 -> :sswitch_29
        0x10 -> :sswitch_28
        0x18 -> :sswitch_27
        0x1a -> :sswitch_26
        0x22 -> :sswitch_25
        0x2a -> :sswitch_24
        0x32 -> :sswitch_23
        0x3a -> :sswitch_22
        0x42 -> :sswitch_21
        0x48 -> :sswitch_20
        0x50 -> :sswitch_1f
        0x58 -> :sswitch_1e
        0x60 -> :sswitch_1d
        0x68 -> :sswitch_1c
        0x70 -> :sswitch_1b
        0x78 -> :sswitch_1a
        0x80 -> :sswitch_19
        0x88 -> :sswitch_18
        0x90 -> :sswitch_17
        0x98 -> :sswitch_16
        0xa2 -> :sswitch_15
        0xad -> :sswitch_14
        0xb0 -> :sswitch_13
        0xb8 -> :sswitch_12
        0xc0 -> :sswitch_11
        0xc8 -> :sswitch_10
        0xd0 -> :sswitch_f
        0xd8 -> :sswitch_e
        0xe0 -> :sswitch_d
        0xe8 -> :sswitch_c
        0xf2 -> :sswitch_b
        0xf8 -> :sswitch_a
        0x100 -> :sswitch_9
        0x108 -> :sswitch_8
        0x10a -> :sswitch_7
        0x110 -> :sswitch_6
        0x11a -> :sswitch_5
        0x122 -> :sswitch_4
        0x12a -> :sswitch_3
        0x132 -> :sswitch_2
        0x138 -> :sswitch_1
        0x142 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAccessibilityClassName()Ljava/lang/String;
    .locals 1

    .line 6214
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityClassName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessibilityClassNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6221
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityClassName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityTraversalAfterId()J
    .locals 2

    .line 6294
    iget-wide v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalAfterId_:J

    return-wide v0
.end method

.method public getAccessibilityTraversalBeforeId()J
    .locals 2

    .line 6265
    iget-wide v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalBeforeId_:J

    return-wide v0
.end method

.method public getActions(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .locals 1
    .param p1, "index"    # I

    .line 6587
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v0
.end method

.method public getActionsCount()I
    .locals 1

    .line 6577
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getActionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;",
            ">;"
        }
    .end annotation

    .line 6556
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getActionsOrBuilder(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProtoOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 6598
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProtoOrBuilder;

    return-object v0
.end method

.method public getActionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6567
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getBackgroundDrawableColor()I
    .locals 1

    .line 6011
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->backgroundDrawableColor_:I

    return v0
.end method

.method public getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;
    .locals 1

    .line 5901
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->boundsInScreen_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCanScrollBackward()Z
    .locals 1

    .line 5814
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollBackward_:Z

    return v0
.end method

.method public getCanScrollForward()Z
    .locals 1

    .line 5785
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollForward_:Z

    return v0
.end method

.method public getCheckable()Z
    .locals 1

    .line 5843
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checkable_:Z

    return v0
.end method

.method public getChecked()Z
    .locals 1

    .line 6185
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checked_:Z

    return v0
.end method

.method public getChildIds(I)I
    .locals 1
    .param p1, "index"    # I

    .line 5250
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getChildIdsCount()I
    .locals 1

    .line 5244
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getChildIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5238
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 5376
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->className_:Ljava/lang/String;

    return-object v0
.end method

.method public getClassNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5383
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->className_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClickable()Z
    .locals 1

    .line 5640
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clickable_:Z

    return v0
.end method

.method public getContentDescription()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;
    .locals 1

    .line 5478
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->contentDescription_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDrawingOrder()I
    .locals 1

    .line 6409
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->drawingOrder_:I

    return v0
.end method

.method public getEditable()Z
    .locals 1

    .line 5727
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->editable_:Z

    return v0
.end method

.method public getEnabled()Z
    .locals 1

    .line 6069
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->enabled_:Z

    return v0
.end method

.method public getFocusable()Z
    .locals 1

    .line 5698
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->focusable_:Z

    return v0
.end method

.method public getHasTouchDelegate()Z
    .locals 1

    .line 5872
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTouchDelegate_:Z

    return v0
.end method

.method public getHintText()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;
    .locals 1

    .line 6786
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintText_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHintTextColor()I
    .locals 1

    .line 6838
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintTextColor_:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 5177
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->id_:I

    return v0
.end method

.method public getImportantForAccessibility()Z
    .locals 1

    .line 5582
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->importantForAccessibility_:Z

    return v0
.end method

.method public getLabeledById()J
    .locals 2

    .line 6098
    iget-wide v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->labeledById_:J

    return-wide v0
.end method

.method public getLayoutParams()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;
    .locals 1

    .line 6734
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->layoutParams_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLongClickable()Z
    .locals 1

    .line 5669
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->longClickable_:Z

    return v0
.end method

.method public getNonclippedHeight()I
    .locals 1

    .line 6127
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedHeight_:I

    return v0
.end method

.method public getNonclippedWidth()I
    .locals 1

    .line 6156
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedWidth_:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 5309
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5320
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->packageName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    .line 5214
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->parentId_:I

    return v0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .line 5427
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->resourceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5434
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->resourceName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getScrollable()Z
    .locals 1

    .line 5756
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->scrollable_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 9

    .line 7106
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->memoizedSerializedSize:I

    .line 7107
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7109
    :cond_0
    const/4 v0, 0x0

    .line 7110
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 7111
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->id_:I

    .line 7112
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7114
    :cond_1
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 7115
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->parentId_:I

    .line 7116
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7119
    :cond_2
    const/4 v1, 0x0

    .line 7120
    .local v1, "dataSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 7121
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    .line 7122
    invoke-interface {v5, v4}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 7120
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7124
    .end local v4    # "i":I
    :cond_3
    add-int/2addr v0, v1

    .line 7125
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getChildIdsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v0, v4

    .line 7127
    .end local v1    # "dataSize":I
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 7128
    nop

    .line 7129
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7131
    :cond_4
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x8

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_5

    .line 7132
    nop

    .line 7133
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x5

    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7135
    :cond_5
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v6, 0x10

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_6

    .line 7136
    nop

    .line 7137
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getResourceName()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x6

    invoke-static {v7, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7139
    :cond_6
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v7, 0x20

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_7

    .line 7140
    nop

    .line 7141
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getContentDescription()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v1

    const/4 v8, 0x7

    invoke-static {v8, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7143
    :cond_7
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v8, 0x40

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_8

    .line 7144
    nop

    .line 7145
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getText()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7147
    :cond_8
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x80

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_9

    .line 7148
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->importantForAccessibility_:Z

    .line 7149
    const/16 v5, 0x9

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7151
    :cond_9
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x100

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_a

    .line 7152
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->visibleToUser_:Z

    .line 7153
    const/16 v5, 0xa

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7155
    :cond_a
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x200

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_b

    .line 7156
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clickable_:Z

    .line 7157
    const/16 v5, 0xb

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7159
    :cond_b
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x400

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_c

    .line 7160
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->longClickable_:Z

    .line 7161
    const/16 v5, 0xc

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7163
    :cond_c
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x800

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_d

    .line 7164
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->focusable_:Z

    .line 7165
    const/16 v5, 0xd

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7167
    :cond_d
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x1000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_e

    .line 7168
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->editable_:Z

    .line 7169
    const/16 v5, 0xe

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7171
    :cond_e
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x2000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_f

    .line 7172
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->scrollable_:Z

    .line 7173
    const/16 v5, 0xf

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7175
    :cond_f
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x4000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_10

    .line 7176
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollForward_:Z

    .line 7177
    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7179
    :cond_10
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v5, 0x8000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_11

    .line 7180
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollBackward_:Z

    .line 7181
    const/16 v5, 0x11

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7183
    :cond_11
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x10000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_12

    .line 7184
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checkable_:Z

    .line 7185
    const/16 v5, 0x12

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7187
    :cond_12
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x20000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_13

    .line 7188
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTouchDelegate_:Z

    .line 7189
    const/16 v5, 0x13

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7191
    :cond_13
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x40000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_14

    .line 7192
    nop

    .line 7193
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v1

    const/16 v5, 0x14

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7195
    :cond_14
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x80000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_15

    .line 7196
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textSize_:F

    .line 7197
    const/16 v5, 0x15

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 7199
    :cond_15
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x100000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_16

    .line 7200
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textColor_:I

    .line 7201
    const/16 v5, 0x16

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7203
    :cond_16
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x200000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_17

    .line 7204
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->backgroundDrawableColor_:I

    .line 7205
    const/16 v5, 0x17

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7207
    :cond_17
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x400000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_18

    .line 7208
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->typefaceStyle_:I

    .line 7209
    const/16 v5, 0x18

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7211
    :cond_18
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x800000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_19

    .line 7212
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->enabled_:Z

    .line 7213
    const/16 v5, 0x19

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7215
    :cond_19
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x1000000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1a

    .line 7216
    iget-wide v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->labeledById_:J

    .line 7217
    const/16 v1, 0x1a

    invoke-static {v1, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7219
    :cond_1a
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x2000000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1b

    .line 7220
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedHeight_:I

    .line 7221
    const/16 v5, 0x1b

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7223
    :cond_1b
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x4000000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1c

    .line 7224
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedWidth_:I

    .line 7225
    const/16 v5, 0x1c

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7227
    :cond_1c
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x8000000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1d

    .line 7228
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checked_:Z

    .line 7229
    const/16 v5, 0x1d

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7231
    :cond_1d
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x10000000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1e

    .line 7232
    nop

    .line 7233
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getAccessibilityClassName()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1e

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7235
    :cond_1e
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x20000000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1f

    .line 7236
    iget-wide v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalBeforeId_:J

    .line 7237
    const/16 v1, 0x1f

    invoke-static {v1, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7239
    :cond_1f
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_20

    .line 7240
    iget-wide v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalAfterId_:J

    .line 7241
    invoke-static {v7, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7244
    :cond_20
    const/4 v1, 0x0

    .line 7245
    .restart local v1    # "dataSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v6}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v6

    if-ge v5, v6, :cond_21

    .line 7246
    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    .line 7247
    invoke-interface {v6, v5}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 7245
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7249
    .end local v5    # "i":I
    :cond_21
    add-int/2addr v0, v1

    .line 7250
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getSuperclassesList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v0, v5

    .line 7252
    .end local v1    # "dataSize":I
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, -0x80000000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_22

    .line 7253
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->drawingOrder_:I

    .line 7254
    const/16 v5, 0x22

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7256
    :cond_22
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v5}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v5

    if-ge v1, v5, :cond_23

    .line 7257
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7258
    invoke-interface {v5, v1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/MessageLite;

    const/16 v6, 0x23

    invoke-static {v6, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v0, v5

    .line 7256
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7260
    .end local v1    # "i":I
    :cond_23
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v5}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v5

    if-ge v1, v5, :cond_24

    .line 7261
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7262
    invoke-interface {v5, v1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/MessageLite;

    const/16 v6, 0x24

    invoke-static {v6, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v0, v5

    .line 7260
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7264
    .end local v1    # "i":I
    :cond_24
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_25

    .line 7265
    nop

    .line 7266
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getLayoutParams()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7268
    :cond_25
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_26

    .line 7269
    nop

    .line 7270
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getHintText()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7272
    :cond_26
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_27

    .line 7273
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintTextColor_:I

    .line 7274
    const/16 v2, 0x27

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7276
    :cond_27
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 7277
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7278
    invoke-interface {v2, v1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x28

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7276
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 7280
    .end local v1    # "i":I
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7281
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7282
    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->memoizedSerializedSize:I

    .line 7283
    return v0
.end method

.method public getSuperclasses(I)I
    .locals 1
    .param p1, "index"    # I

    .line 6342
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getSuperclassesCount()I
    .locals 1

    .line 6332
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getSuperclassesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6322
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getText()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;
    .locals 1

    .line 5530
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->text_:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;->getDefaultInstance()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTextCharacterLocations(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;
    .locals 1
    .param p1, "index"    # I

    .line 6880
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    return-object v0
.end method

.method public getTextCharacterLocationsCount()I
    .locals 1

    .line 6874
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getTextCharacterLocationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;",
            ">;"
        }
    .end annotation

    .line 6861
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTextCharacterLocationsOrBuilder(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProtoOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 6887
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProtoOrBuilder;

    return-object v0
.end method

.method public getTextCharacterLocationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6868
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 5982
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textColor_:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 5953
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textSize_:F

    return v0
.end method

.method public getTouchDelegateBounds(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;
    .locals 1
    .param p1, "index"    # I

    .line 6451
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    return-object v0
.end method

.method public getTouchDelegateBoundsCount()I
    .locals 1

    .line 6445
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getTouchDelegateBoundsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;",
            ">;"
        }
    .end annotation

    .line 6432
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTouchDelegateBoundsOrBuilder(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProtoOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 6458
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProtoOrBuilder;

    return-object v0
.end method

.method public getTouchDelegateBoundsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6439
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 1

    .line 6040
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->typefaceStyle_:I

    return v0
.end method

.method public getVisibleToUser()Z
    .locals 1

    .line 5611
    iget-boolean v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->visibleToUser_:Z

    return v0
.end method

.method public hasAccessibilityClassName()Z
    .locals 2

    .line 6208
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAccessibilityTraversalAfterId()Z
    .locals 2

    .line 6288
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAccessibilityTraversalBeforeId()Z
    .locals 2

    .line 6259
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBackgroundDrawableColor()Z
    .locals 2

    .line 6005
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBoundsInScreen()Z
    .locals 2

    .line 5895
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCanScrollBackward()Z
    .locals 2

    .line 5808
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCanScrollForward()Z
    .locals 2

    .line 5779
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCheckable()Z
    .locals 2

    .line 5837
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChecked()Z
    .locals 2

    .line 6179
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClassName()Z
    .locals 2

    .line 5370
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClickable()Z
    .locals 2

    .line 5634
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasContentDescription()Z
    .locals 2

    .line 5472
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDrawingOrder()Z
    .locals 2

    .line 6403
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEditable()Z
    .locals 2

    .line 5721
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnabled()Z
    .locals 2

    .line 6063
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFocusable()Z
    .locals 2

    .line 5692
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHasTouchDelegate()Z
    .locals 2

    .line 5866
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHintText()Z
    .locals 2

    .line 6780
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHintTextColor()Z
    .locals 2

    .line 6832
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasId()Z
    .locals 2

    .line 5167
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasImportantForAccessibility()Z
    .locals 2

    .line 5576
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLabeledById()Z
    .locals 2

    .line 6092
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLayoutParams()Z
    .locals 2

    .line 6728
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasLongClickable()Z
    .locals 2

    .line 5663
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNonclippedHeight()Z
    .locals 2

    .line 6121
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNonclippedWidth()Z
    .locals 2

    .line 6150
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPackageName()Z
    .locals 2

    .line 5299
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasParentId()Z
    .locals 2

    .line 5208
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResourceName()Z
    .locals 2

    .line 5421
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScrollable()Z
    .locals 2

    .line 5750
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasText()Z
    .locals 2

    .line 5524
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTextColor()Z
    .locals 2

    .line 5976
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTextSize()Z
    .locals 2

    .line 5947
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTypefaceStyle()Z
    .locals 2

    .line 6034
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVisibleToUser()Z
    .locals 2

    .line 5605
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 10
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6979
    nop

    .line 6980
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 6981
    .local v0, "extensionWriter":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;>.ExtensionWriter;"
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 6982
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->id_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6984
    :cond_0
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    .line 6985
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->parentId_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6987
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v4}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 6988
    iget-object v4, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->childIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6987
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6990
    .end local v1    # "i":I
    :cond_2
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_3

    .line 6991
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6993
    :cond_3
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x8

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_4

    .line 6994
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6996
    :cond_4
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v6, 0x10

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_5

    .line 6997
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getResourceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6999
    :cond_5
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v7, 0x20

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_6

    .line 7000
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getContentDescription()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v8

    invoke-virtual {p1, v1, v8}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7002
    :cond_6
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v8, 0x40

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_7

    .line 7003
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getText()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7005
    :cond_7
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x80

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_8

    .line 7006
    const/16 v1, 0x9

    iget-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->importantForAccessibility_:Z

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7008
    :cond_8
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x100

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_9

    .line 7009
    const/16 v1, 0xa

    iget-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->visibleToUser_:Z

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7011
    :cond_9
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x200

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_a

    .line 7012
    const/16 v1, 0xb

    iget-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->clickable_:Z

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7014
    :cond_a
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x400

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_b

    .line 7015
    const/16 v1, 0xc

    iget-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->longClickable_:Z

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7017
    :cond_b
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x800

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_c

    .line 7018
    const/16 v1, 0xd

    iget-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->focusable_:Z

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7020
    :cond_c
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x1000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_d

    .line 7021
    const/16 v1, 0xe

    iget-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->editable_:Z

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7023
    :cond_d
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x2000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_e

    .line 7024
    const/16 v1, 0xf

    iget-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->scrollable_:Z

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7026
    :cond_e
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/16 v5, 0x4000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_f

    .line 7027
    iget-boolean v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollForward_:Z

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7029
    :cond_f
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const v5, 0x8000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_10

    .line 7030
    const/16 v1, 0x11

    iget-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->canScrollBackward_:Z

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7032
    :cond_10
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x10000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_11

    .line 7033
    const/16 v1, 0x12

    iget-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checkable_:Z

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7035
    :cond_11
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x20000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_12

    .line 7036
    const/16 v1, 0x13

    iget-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hasTouchDelegate_:Z

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7038
    :cond_12
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x40000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_13

    .line 7039
    const/16 v1, 0x14

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7041
    :cond_13
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x80000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_14

    .line 7042
    const/16 v1, 0x15

    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textSize_:F

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 7044
    :cond_14
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x100000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_15

    .line 7045
    const/16 v1, 0x16

    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textColor_:I

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7047
    :cond_15
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x200000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_16

    .line 7048
    const/16 v1, 0x17

    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->backgroundDrawableColor_:I

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7050
    :cond_16
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x400000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_17

    .line 7051
    const/16 v1, 0x18

    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->typefaceStyle_:I

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7053
    :cond_17
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x800000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_18

    .line 7054
    const/16 v1, 0x19

    iget-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->enabled_:Z

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7056
    :cond_18
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x1000000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_19

    .line 7057
    const/16 v1, 0x1a

    iget-wide v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->labeledById_:J

    invoke-virtual {p1, v1, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7059
    :cond_19
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x2000000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1a

    .line 7060
    const/16 v1, 0x1b

    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedHeight_:I

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7062
    :cond_1a
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x4000000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1b

    .line 7063
    const/16 v1, 0x1c

    iget v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->nonclippedWidth_:I

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7065
    :cond_1b
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x8000000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1c

    .line 7066
    const/16 v1, 0x1d

    iget-boolean v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->checked_:Z

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7068
    :cond_1c
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x10000000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1d

    .line 7069
    const/16 v1, 0x1e

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getAccessibilityClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 7071
    :cond_1d
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v5, 0x20000000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1e

    .line 7072
    const/16 v1, 0x1f

    iget-wide v8, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalBeforeId_:J

    invoke-virtual {p1, v1, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7074
    :cond_1e
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_1f

    .line 7075
    iget-wide v8, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->accessibilityTraversalAfterId_:J

    invoke-virtual {p1, v7, v8, v9}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7077
    :cond_1f
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v6}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v6

    if-ge v1, v6, :cond_20

    .line 7078
    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->superclasses_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v6, v1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {p1, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7077
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7080
    .end local v1    # "i":I
    :cond_20
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField0_:I

    const/high16 v6, -0x80000000

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_21

    .line 7081
    const/16 v1, 0x22

    iget v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->drawingOrder_:I

    invoke-virtual {p1, v1, v6}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7083
    :cond_21
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v6}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v6

    if-ge v1, v6, :cond_22

    .line 7084
    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->touchDelegateBounds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v6, v1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/MessageLite;

    const/16 v7, 0x23

    invoke-virtual {p1, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7083
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7086
    .end local v1    # "i":I
    :cond_22
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v6}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v6

    if-ge v1, v6, :cond_23

    .line 7087
    iget-object v6, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->actions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v6, v1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/MessageLite;

    const/16 v7, 0x24

    invoke-virtual {p1, v7, v6}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7086
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7089
    .end local v1    # "i":I
    :cond_23
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_24

    .line 7090
    const/16 v1, 0x25

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getLayoutParams()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7092
    :cond_24
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_25

    .line 7093
    const/16 v1, 0x26

    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->getHintText()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7095
    :cond_25
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->bitField1_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_26

    .line 7096
    const/16 v1, 0x27

    iget v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->hintTextColor_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7098
    :cond_26
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 7099
    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->textCharacterLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x28

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7098
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 7101
    .end local v1    # "i":I
    :cond_27
    invoke-virtual {v0, v5, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 7102
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 7103
    return-void
.end method
